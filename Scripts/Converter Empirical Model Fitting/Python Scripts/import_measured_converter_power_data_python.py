# Function: Import CSU-characterized converter power data from CSV file
# ------------------------------------------------------------------------------
# Imports device power data for CSU-characterized AC/DC converters. Expects a
# directory containing file 'Power_data.csv' and with a standard CSV column
# format (names, units).
#
# Inputs:
#   dataDirectory: Path to data directory containing device data
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

import csv

def import_measured_converter_power_data(dataDirectory):
    
    ## Dir structure for CSU-characterized devices
    # [parent]/
    # ├── Processed Data <- Set dataDirectory to here!!
    # │   ├── Figures
    # │   │   ├── ..
    # │   │   ├── ..
    # │   ├── Harmonics.csv
    # │   └── Power_data.csv <- Required File
        
    # Read CSV data
    with open(dataDirectory + '/Power_data.csv', 'r') as file:
        powerTable = list(csv.reader(file))
    
    # Get column headers
    powerHeaders = powerTable[0]
    
    # Structure for column indices
    col = {}
    
    # Power data column indices (add more if needed)
    col['Pin'] = powerHeaders.index('Input Active Power (W)')
    col['Pout'] = powerHeaders.index('Output Active Power (W)')
    
    # Data structure
    data = {}
    data['path'] = dataDirectory
    
    # Power data
    data['Pin'] = [float(row[col['Pin']]) for row in powerTable[1:]]
    data['Pout'] = [float(row[col['Pout']]) for row in powerTable[1:]]
    
    return data