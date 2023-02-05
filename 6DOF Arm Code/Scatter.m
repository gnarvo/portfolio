function Scatter(robot_arm)

%build a scatter plot
samples = 1000;
%cant load very much on the computers in the lab so there are less samples

theta1Rand = pi/2 * rand(samples,1);
theta2Rand = pi/2 * rand(samples,1);
theta3Rand = 4 * rand(samples,1);
theta4Rand = pi/2 * rand(samples,1);
theta5Rand = pi/2 * rand(samples,1);
theta6Rand = pi/2 * rand(samples,1);

q = [theta1Rand theta2Rand theta3Rand theta4Rand theta5Rand theta6Rand];
[TRand, All] = robot_arm.fkine(q);
TP = squeeze(TRand( 1:3, 4, :));

figure;
h = plot3(TP(1,:), TP(2,:), TP(3,:), 'r.');
set(h, 'LineWidth', 3);

%define the workspace
w = [-500 500 -500 500 0 600];
robot_arm.plot([0, 0, 0, 0, 0, 0], 'noshadow', 'workspace', w);

h = title('10615728: SetupSainsmart6DOF: Working Area');
set(h, 'FontSize', 20);
end