Final dataset containing SNRs on all beams from all BSs with hand blockage and mobility.

Make sure you have **patool** library installed in python for extraction. 

The dataset is in a .mat file of approximately 5 GB. It is saved as a -v7.3 .mat file so if you want to load it into other platforms like python, you need to put the version in as an argument.

The .mat file contains a 5-D tensor called **SNRs**. The dimensions are N_traj x N_BS x N_TX x N_RX x T where N_traj = 100 is the total UE trajectories, N_BS = 4 is the BSs, N_TX = 64 is the TX beams, N_RX = 8 is the RX beams index and T = 3000 is the time samples. The time samples are placed 20 ms apart.

For example, if we want to access trajectory 50 on 4-th BS with 30-th TX beam, 3-rd RX beam at time 499. We will call SNRs(50,4,30,3,499). 
