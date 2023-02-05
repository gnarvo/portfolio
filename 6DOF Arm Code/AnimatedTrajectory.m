function [T, TI] = AnimatedTrajectory(TLP_robot)
steps = 100; %define the number of steps
T = []; %define the targets for square
%define the start points, these create a rectangle
T(:,:,1) = transl(250, 100, 250);
T(:,:,2) = transl(250, 100, -250);
T(:,:,3) = transl(-250, 100, -250);
T(:,:,4) = transl(-250, 100, 250);
T(:,:,5) = transl(250, 100, 250);
%these will make it do a square

TI = []; %interpolate between targets with the following steps
for idx = 1: (length(T)-1)
    offset = (idx-1) * steps;
    tmp = ctraj(T(:,:,idx), T(:,:,idx+1), steps);
    for tidx = 1:steps
        TI(:,:, tidx+offset) = tmp(:,:,tidx);
    end
end

TP = squeeze(T( 1:3, 4, :)); %extract the position from the homogeneous matrices

figure; %begin plotting
h = plot3(TP(1,:), TP(2,:), TP(3,:), 'k-'); %plot a line in 3D space
set(h, 'LineWidth', 3);
h = title('10615728: SetupSainsmart6DOF: Trajectory Animation, Square');
set(h, 'FontSize', 20);
q = TLP_robot.ikunc(TI); %solve the inverse kinematics
save('TLP_robot', 'q');
TLP_robot.plot(q);


% plotTrajectories(q);
%give the plot a title
% h = title('10615728: SetupSainsmart6DOF: Trajectory Animation', ROBOT);
% set(h, 'FontSize', 20);
% set(gca, 'FontSize', 20); %axis labels
%TLP_robot_arm.plot(q); %generate the animation of trajectories
%plot the graph
%PlotQTrajectories(q, robotName); %plot q-control angular trajectories
%figure;
%w = [-500 500 -500 500 0 600]; %define the workspace
%robot_arm.plot([0, 0, 0, 0, 0, 0], 'noshadow', 'workspace', w);

end