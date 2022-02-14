Hand blockage model from Qualcomm at 28 GHz [1]

handblockagelinear.m is the function that gives us the interpolated blockage loss vector in dB. Length of the vector is the number of samples and each sample corresponds to 1ms.

An instance of interpolated hand blockage loss has been shown in handblock_demo.pdf

The exact procedure for doing time interpolation can be found here https://github.com/shastpi/mmWave-ray-tracer-dataset/blob/main/SimSetup/SimulationSetup.pdf in the section _Hand Blockage Modeling._

[1] V. Raghavan et al., "Statistical Blockage Modeling and Robustness of Beamforming in Millimeter-Wave Systems," in IEEE Transactions on Microwave Theory and Techniques, vol. 67, no. 7, pp. 3010-3024, July 2019, doi: 10.1109/TMTT.2019.2899846.
