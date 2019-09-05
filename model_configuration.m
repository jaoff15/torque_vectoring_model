%% Model configuration




%% Construct track
clc, clear all, format compact

N = 150;
% 25 drive to the skidpad
% 50 left circle
% 50 right circle
% 25 out
in_off = 0;
in = 25;
c1_off = in;
c1 = 50;
c2_off = in + c1;
c2 = 50;
out_off = in + c1 + c2;
out = 25;

% Modelled after the skidpad event
s = zeros(N,2); % Track Points

figure(1)
clf(1)
hold all
w = 18.25;

% in
s(in_off+1:in_off+in,1) = zeros(in,1);
s(in_off+1:in_off+in,2) = in:-1:1;



% Circle 1
angles = linspace(2*pi,0, c1); 
radius = w;
c1x = -w;
c1y = 0;
x = radius * cos(angles) + c1x; 
y = radius * sin(angles) + c1y;

plot(c1x, c1y, 'k+', 'LineWidth', 1, 'MarkerSize', 16);


s(c1_off+1:c1_off+c1,1) = x(1:c1);
s(c1_off+1:c1_off+c1,2) = y(1:c1);



% Cirle 2
angles = linspace(0, 2*pi, c2); 
radius = w;
c1x = w;
c1y = 0;
x = radius * cos(angles) + c1x; 
y = radius * sin(angles) + c1y;

plot(c1x, c1y, 'k+', 'LineWidth', 1, 'MarkerSize', 16);

s(c2_off+1:c2_off+c2*1/2,1) = x(c2/2+1:c2);
s(c2_off+1:c2_off+c2*1/2,2) = y(c2/2+1:c2);
s(c2_off+c2*1/2+1:c2_off+c2,1) = x(1:c2/2);
s(c2_off+c2*1/2+1:c2_off+c2,2) = y(1:c2/2);

% out
s(out_off+1:out_off+out,1) = zeros(out,1);
s(out_off+1:out_off+out,2) = 0:-1:-out+1;


x = s(:,1);
y = s(:,2);
for i = 1:N
    clf(1)
    hold all
    plot(x(1:i), y(1:i));
    xlim([-w*2,w*2])
    ylim([-w*2,w*2])
    scatter([x(i)],[y(i)])
    pause(0.05);
end


