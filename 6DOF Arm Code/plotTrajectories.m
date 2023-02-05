function [T1, T2, T3] = plotTrajectories(q)
hold on;
for i = 1:length(q)
    T1(i,1) = q(1,1);
    T2(i,1) = q(1,2);
    T3(i,1) = q(1,3);
    T4(i,1) = q(1,4);
    T5(i,1) = q(1,5);
    T6(i,1) = q(1,6);
end 

figure;
h = plot(T1);
h = plot(T2);
h = plot(T3);
h = plot(T4);
h = plot(T5);
h = plot(T6);

%add title
h = title('10615728: SetupSainsmart6DOF: Trajectory Plots');
set(h, 'FontSize', 20);

end