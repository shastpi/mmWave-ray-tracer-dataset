function [blockage_vec] = handblockagelinear()

% time interpolated version of Qualcomm's Hand blockage model
attenuation = -wblrnd(16.7,4.61); % max attenuation

totaltime = wblrnd(0.59,6.32); % total blockage time in ms

tdecay =  wblrnd(0.044,2.07); % time to decay 3dB in ms

trise = wblrnd(0.045,1.76); % time to rise 3dB in ms


sampstodecay = -attenuation/3; % number of samples required to decay.
% 1 sample = 1 ms

decaytime = round(sampstodecay*tdecay*1e3); % decay time samples

risetime = round(sampstodecay*trise*1e3); % rise time samples

constantblkdtiime = round(totaltime*1e3) - decaytime - risetime; % samples when blockage is constant

if constantblkdtiime<0

    constantblkdtiime = 0;

end
blkageevent = zeros(1,constantblkdtiime+risetime+decaytime); % blockage event vector in ms samples

blkageevent(1:decaytime) = (attenuation/decaytime)*(1:decaytime); % interpolating decay region

blkageevent(decaytime+1:decaytime+(constantblkdtiime)) = attenuation; % interpolating constant region

% interpolating rise reftion
blkageevent(decaytime+1+constantblkdtiime:decaytime+(constantblkdtiime)+risetime) = attenuation+(-attenuation/risetime)*(1:risetime);


blockage_vec = blkageevent; % sampled every 1 ms


end

