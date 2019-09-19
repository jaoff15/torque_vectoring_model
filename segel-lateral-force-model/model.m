

l = 0;      % Vehicle length
a = 0;      % Length from CG to front axel
b = 0;      % Length from CG to rear axel
h = 0;      % Height of CG
g = 9.8;    % Gravitational acceleration

m = 200;    % Vehicle mass
W = 200;    % Vehicle weight

mu = 0;     % Friction coefficient

c_f = 0;    % Cornering stiffness of front tires 
c_r = 0;    % Cornering stiffness of rear tires


P_f = 1;        % Longitudinal force of front tires
P_r = P_f;      % Longitudinal force of rear tires

steering_angle = 0; % Steering angle

yaw_angle = 0;  % Yaw angle

vel_lat = 0; % Lateral velocity
vel_lon = 0; % Longitudinal velocity
