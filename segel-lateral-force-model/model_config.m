

l = 2;      % Vehicle length
a = 1;      % Length from CG to front axel
b = 1;      % Length from CG to rear axel
h = 0.1;    % Height of CG
g = 9.8;    % Gravitational acceleration

I = 100;      % Vehicle Yaw Inertia

m = 200;    % Vehicle mass
W = 200;    % Vehicle weight

% Source: https://www.engineeringtoolbox.com/friction-coefficients-d_778.html
% Materials             Surface condition   Static friction coefficient
% Tire, dry	Road, dry	Clean and Dry       1	
% Tire, wet	Road, wet	Clean and Dry       0.2
mu = 1;     % Friction coefficient, Dry tire vs dry road
mu = 0.2;   % Friction coefficient, Wet tire vs wet road

c_f = 200;    % Cornering stiffness of front tires [N/deg]
c_r = 200;    % Cornering stiffness of rear tires [N/deg]


P_f = 1;        % Longitudinal force of front tires
P_r = P_f;      % Longitudinal force of rear tires

steering_angle = 1; % Steering angle

yaw_angle = -5;  % Yaw angle

vel_lat = 10; % Lateral velocity
vel_lon = 10; % Longitudinal velocity
