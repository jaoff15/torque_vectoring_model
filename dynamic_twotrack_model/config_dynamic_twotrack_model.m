clc, clear all, format compact

% Lengths
length_front        = 1; 
length_rear         = 1; 
length_width        = 0.5; 

% Cornering stiffnesses
cornering_stiffness = 1000;
mass                = 200;
yaw_inertia         = 1000;



init_states = [0; 0; 0; 0; 0; 0];