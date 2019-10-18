clc, clear all, format compact
init_states = [0,0,0,0,0,0,0];

mass        = 200; % mass [kg]
yaw_inertia = 50;  % 

length_front = 1; % [m]
length_rear  = 1; % [m]

cornering_stiffness_front = 10000;
cornering_stiffness_rear  = 10000;
