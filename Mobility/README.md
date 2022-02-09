Adding mobility on top of the ray-tracer generated traces using binary occupancy grid and MATLAB robot navigation toolbox.

The algorithm used for generating mobility is Rapidly-exploring random tree (RRT). Purpose of adding RRT is avoding collisions with buildings

The  binary occupancy grid can be found in mymap.mat. The file contains a map object which can be used for navigation. Each entry of binary occupancy grid is a 1 x 1 m^2 measurement area

idx_matrix_new.mat is the .mat file containing indices of the parsed data files to be used in a trajectory. The file contains a 2D array called **idxmatrix** with dimensions N_traj x N_time where N_traj = 100 is the total number of trajectories. N_time = 3000 is the time samples in a trajectory. Each sample is spaced 20 ms apart

rxCordsstandard.mat contains a matrix **rxcords** which is N_pts x 3. First dimension corresponds to the measurement index of the ray-tracer parsed data which is N_pts = 238560. 1st column is x co-ordinate related with the respective meaasurement point, second column is the y-co-ordinate related with the respective measurement point and third column is the z co-ordinate related with the respective measurement point. 

velocities_new.mat contains a vector **vvec** with dimensions N_traj x 1 where N_traj = 100. Each value corresponds to velocity assigned to the UE for the whole trajectory. The value of velocity varies from 0-27 m/s.

plot_trajectory_demo is the complete demo of how to convert measurement indices to actual x-y cordinates and then plot it over the binary occupancy grid.

% To be added: Implementation of RRT on binary occupancy grid using MATLAB robot navigation toolbox
