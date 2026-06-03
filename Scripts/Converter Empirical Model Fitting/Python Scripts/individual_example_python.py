from import_measured_converter_harmonic_data_python import import_measured_converter_harmonic_data
from import_measured_converter_power_data_python import import_measured_converter_power_data
from loss_model_python import loss_model
from empirical_harmonic_model_python import empirical_harmonic_model


import os
import pandas as pd
import numpy as np
from scipy.io import savemat
# Clear plots
import matplotlib.pyplot as plt
plt.close('all')

# # Clear console
# os.system('clear')

# Configuration
# Device data source directory
#dataDirectory = '/Users/prat043/OneDrive - PNNL/Desktop/Local Code/Matlab to Python simple/Example Data/HP 677777-002 Laptop Charger/Processed Data'
dataDirectory = '/Users/wagh847/Library/CloudStorage/OneDrive-PNNL/Anay/Projects/#designfordc/Model Data/LED Driver/Processed Data'
# Device ratings
Pnom = 29          # W
Vnom = 120         # V_ac
Inom = Pnom / Vnom # A_ac

# Commentary: The default device used in this example, a HP 677777-002 external
# AC/DC power supply for laptop computers, is interesting because it exhibits
# power factor correction at the higher end of its power range. This can be seen
# clearly in the harmonic plots.

# Maximum harmonic order to include in interpolation table
hMax = 51

# Import Data
# Use helper functions to import the data from CSV
convData = {}
convData['power'] = import_measured_converter_power_data(dataDirectory)
convData['harmonics'] = import_measured_converter_harmonic_data(dataDirectory)

# Note: By default, harmonic samples are grouped and averaged by th
# "Power Step" column in the CSV file. You can also specify the name of the
# grouping column specifically:
#convData = import_measured_converter_data(dataDirectory, "Power Step");

# Fit Efficiency Model
# Call efficiency model fitting function
Pin = convData['power']['Pin']
Pout = convData['power']['Pout']
lossCoeff = loss_model(Pin, Pout, Pnom)

# Split out results into individual alpha, beta, gamma
alpha = lossCoeff[0]
beta  = lossCoeff[1]
gamma = lossCoeff[2]

# Modeled curves: Pout, Pin, Ploss, efficiency
#See loss_model() documentation for how to apply alpha, beta, gamma
mdl_Pout = Pnom * np.arange(0, 1.01, 0.01)
#mdl_Pout  = Pnom .* (0.1,0.2,0.4,0.9,1,2,2.9,3.9,4.9,5.9,6.8,7.8,8.8,9.5,9.8,11.7,13.7,15.7,17.6,18.9,19.6,23.5,27.4,31.3,35.2,39.1,47.0,54.8,62.6,70.4,75.7);
mdl_Pin = mdl_Pout + Pnom * (alpha + beta * (mdl_Pout / Pnom) + gamma * (mdl_Pout / Pnom) ** 2)
mdl_Ploss = mdl_Pin - mdl_Pout
mdl_Eff = mdl_Pout / mdl_Pin

# Plot: Loss curve
plt.figure(1)
plt.plot(Pout, (list(map(lambda a, b: a - b, Pin, Pout))), 'ob')
plt.plot(mdl_Pout, mdl_Ploss, '--r')
plt.xlabel('Pout (W)')
plt.ylabel('Loss (W)')
plt.title('Pout vs Loss')
plt.legend(['Measurement', 'Model'])
plt.show(block=False)

# Plot: Efficiency curve
plt.figure(2)
plt.plot(Pout, (list(map(lambda a, b: a/b*100, Pout, Pin))), 'ob')
plt.plot(mdl_Pout, mdl_Eff * 100, '--r')
plt.xlabel('Pout (W)')
plt.ylabel('Efficiency')
plt.title('Efficiency')
plt.legend(['Measurement', 'Model'])
plt.show(block=False)

## Fit Harmonic Model
# Important! Data comes in with even and odd harmonics, but we typically want
# only odd harmonics for surface fitting. We also may want to limit the maximum
# harmonic present in the model, as shown here.

h = convData['harmonics']['h']
hMask = (np.mod(h, 2) > 0) & (h <= hMax)

h = h[hMask]
Imeas = convData['harmonics']['I'][hMask]
Imag = convData['harmonics']['Imag'][hMask]
Iarg = convData['harmonics']['Iarg'][hMask]
P1 = convData['harmonics']['P1'][hMask]

X, Y, Z_mag, Z_arg = empirical_harmonic_model(Imeas, h, P1, Inom, Pnom)


# Plot: Magnitude
fig = plt.figure(3)
ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(X, Y * Pnom, Z_mag * Inom, alpha=0.75, cmap='viridis')
ax.set_xlabel('h', fontsize=14)
ax.set_ylabel('$P_{AC}^{(1)}$', fontsize=14)
ax.set_zlabel('$|I^{(h)}|$', fontsize=14)
ax.set_title('Magnitude Model')
plt.show(block=False)

# Plot: Phase
fig = plt.figure(4)
ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(X, Y * Pnom, Z_arg, alpha=0.75, cmap='viridis')
ax.set_xlabel('h', fontsize=14)
ax.set_ylabel('$P_{AC}^{(1)}$', fontsize=14)
ax.set_zlabel(r'$\angle I^{(h)}$', fontsize=14)
ax.set_title('Phase Model')
plt.show(block=False)

# Save Output
# Demonstrates how to save a .mat file compatible with BEEAM's empirical AC/DC
# converter model.

# Filename
fName = 'osram_python.mat'
data_dict = {"X":X,
             "Y":Y,
             "Z_mag":Z_mag,
             "Z_arg":Z_arg,
             "alpha":alpha,
             "beta":beta,
             "gamma":gamma}
print(data_dict)
plt.show()
#savemat(fName, data_dict)

#np.savez(fName, X=X, Y=Y, Z_mag=Z_mag, Z_arg=Z_arg, alpha=alpha, beta=beta, gamma=gamma)