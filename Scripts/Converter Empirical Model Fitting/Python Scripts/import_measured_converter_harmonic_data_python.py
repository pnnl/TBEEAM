# Function: Import CSU-characterized converter data from CSV file
# ------------------------------------------------------------------------------
# Imports device harmonics data for CSU-characterized AC/DC converters. Expects
# a directory containing file 'Harmonics.csv' and with a standard CSV column
# format (names, units).
#
# Harmonics are processed in groups representing a single experimental setup
# (e.g. a particular power level). It is important that the voltage and load
# conditions are consistent for all samples within each group!
#
# Inputs:
#   dataDirectory: Path to data directory containing device data
#   groupColumn: Grouping column for processing harmonic data
#
# Default value for groupColumn is "Power Step"
#
# Outputs:
#   data: struct containing converter characterization data
#
# Stephen Frank, Stephen.Frank@nrel.gov
#
# Based On: 'getConverterData.m' and 'generate_harmonic_load_model.m' originally
# written by Avpreet Othee, avpreetsingh@hotmail.com
# ------------------------------------------------------------------------------
#
# Converted from .m files to python with help from this online tool: https://www.codeconvert.ai/matlab-to-python-converter
# Converted by: Shat Pratoomratana, Shat.Pratoomratana@pnnl.gov
#-------------------------------------------------------------------------------


import numpy as np
import pandas as pd

def import_measured_converter_harmonic_data(dataDirectory, groupColumn='Power Step'):
    # Read CSV data
    harmonicsTable = pd.read_csv(f"{dataDirectory}/Harmonics.csv")

    # Get column headers
    harmonicsHeaders = harmonicsTable.columns.tolist()

    # Structure for column indices
    col = {}

    # Harmonics data columns indices
    col['grp'] = harmonicsHeaders.index(groupColumn)
    col['h'] = harmonicsHeaders.index('Harmonic')
    col['Vmag'] = harmonicsHeaders.index('Input Voltage Mag (Vrms)')
    col['Varg'] = harmonicsHeaders.index('Input Voltage Angle (deg)')
    col['Imag'] = harmonicsHeaders.index('Input Current Mag (Arms)')
    col['Iarg'] = harmonicsHeaders.index('Input Current Angle (deg)')

    # Data structure
    data = {}
    data['path'] = dataDirectory

    # Disaggregated harmonics data
    h = np.array(harmonicsTable.iloc[1:, col['h']])
    Vmag = np.array(harmonicsTable.iloc[1:, col['Vmag']])
    Varg = np.deg2rad(np.array(harmonicsTable.iloc[1:, col['Varg']]))
    Imag = np.array(harmonicsTable.iloc[1:, col['Imag']])
    Iarg = np.deg2rad(np.array(harmonicsTable.iloc[1:, col['Iarg']]))

    # Compute complex voltage, complex current, input power
    Vin = Vmag * np.exp(1j * Varg)
    Iin = Imag * np.exp(1j * Iarg)
    Sin = Vin * np.conj(Iin)
    Pin = Sin.real

    # Groups for averaging harmonics data
    rowGroupRaw = harmonicsTable.iloc[1:, col['grp']]

    # Converts groups to integer indices 1, 2, ...
    rowGroup = pd.factorize(rowGroupRaw)[0]

    # Unique values
    groups = np.sort(np.unique(rowGroup))
    harms = np.sort(np.unique(h))

    # Fundamental voltage and power reference values by group
    V1_ref = np.zeros_like(h)
    P1_ref = np.zeros_like(h)
    for g in groups:
        # Compute mask
        mask = (rowGroup == g) & (h == 1)  # Fundamental

        # Fundamental voltage reference for group
        V1_ref[rowGroup == g] = np.mean(Vin[mask])

        # Fundamental power reference for group
        P1_ref[rowGroup == g] = np.mean(Pin[mask])

    # Correct phase angles
    Vin = Vin * np.exp(-1j * np.angle(V1_ref) * h)  # Rotate voltages
    Iin = Iin * np.exp(-1j * np.angle(V1_ref) * h)  # Rotate currents

    # Dimensions of aggregated harmonics data
    numRows = len(groups) * len(harms)

    # Create data as a dictionary
    data = {
        'grp': np.zeros(numRows),
        'h': np.zeros(numRows),
        'V': np.zeros(numRows, dtype=np.complex128),
        'I': np.zeros(numRows, dtype=np.complex128),
        'P1': np.zeros(numRows)
    }

    # Populate aggregated harmonics data
    r = 0  # Starting row index
    for gg in groups:
        for hh in harms:
            # Advance row index
            data['grp'][r] = gg
            data['h'][r] = hh

            # Grouping mask
            mask = (rowGroup == gg) & (h == hh)

            # Averages
            data['V'][r] = np.mean(Vin[mask])
            data['I'][r] = np.mean(Iin[mask])

            # Reference fundamental power
            data['P1'][r] = np.mean(P1_ref[mask])  # Should all be the same value

            r += 1

    # Final magnitude and phase angle
    data['Vmag'] = np.abs(data['V'])
    data['Varg'] = np.angle(data['V'])
    data['Imag'] = np.abs(data['I'])
    data['Iarg'] = np.angle(data['I'])

    return data