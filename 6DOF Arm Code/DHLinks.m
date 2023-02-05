function [table] = DHLinks()
%DH table rows using the link command to build each link
%row 1
theta0 = 0;
alpha0 = -pi/2;
a0 = 29.5;
d0 = 108;
offset0 = 0;
L(1) = Link([theta0 d0 a0 alpha0 0 offset0]);

%row 2
%extra rotation in offset
theta1 = -pi/2;
alpha1 = 0;
a1 = 120;
d1 = 0;
offset1 = -pi/2;
L(2) = Link([theta1 d1 a1 alpha1 0 offset1]);

%row 3
theta2 = 0;
alpha2 = -pi/2;
a2 = 20;
d2 = 0;
offset2 = 0;
L(3) = Link([theta2 d2 a2 alpha2 0 offset2]);

%row 4
theta3 = 0;
alpha3 = pi/2;
a3 = 0;
d3 = 120;
offset3 = 0;
L(4) = Link([theta3 d3 a3 alpha3 0 offset3]);

%row 5
theta4 = 0;
alpha4 = -pi/2;
a4 = 0;
d4 = 0;
offset4 = 0;
L(5) = Link([theta4 d4 a4 alpha4 0 offset4]);

%row 6
theta5 = 0; 
alpha5 = 0;
a5 = 0;
d5 = 30;
offset5 = 0;
L(6) = Link([theta5 d5 a5 alpha5 0 offset5]);

%form a table of all the values created by the links above
table = L;
%join each link together
TLP_robot = SerialLink(table, 'name', 'SetupSainsmart6DOF');
%to build the interactive version I used the teach function
TLP_robot.teach
%plot animated trajectory
%q = TLP_robot.ikunc(TI); %solve the inverse kinematics
%AnimatedTrajectory(q);
%plotTrajectories(q);

% figure;
% h = title('10615728: SetupSainsmart6DOF: Trajectory Animation');
% set(h, 'FontSize', 20);
%h = title('10615728: SetupSainsmart6DOF: Interactive');
%w = [-500 500 -500 500 0 600]; %define the workspace
%set(h, 'FontSize', 20);
%TLP_robot.plot([0, 0, 0, 0, 0, 0], 'noshadow', 'workspace', w);
%TLP_robot.qlim = [-pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2];
%plot the scatter plot
%Scatter(TLP_robot); 
end