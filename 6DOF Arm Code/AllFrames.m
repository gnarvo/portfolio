function [output] = AllFrames
%CONSIDERS ALL FRAMES PASSED TO THIS FUNCTION

%FRAME 1 TO 0
theta1 = -pi/2;
Tx1 = 29.5;
Ty1 = 0;
Tz1 = 108;
XRT1 = [1      0           0        Tx1; 
        0  cos(theta1) -sin(theta1) Ty1; 
        0  sin(theta1)  cos(theta1) Tz1; 
        0      0           0         1];

%FRAME 2 TO 1
theta2 = -pi/2;
Tx2 = 0;
Ty2 = -120;
Tz2 = 0;
ZRT2 = [cos(theta2) -sin(theta2) 0 Tx2; 
        sin(theta2)  cos(theta2) 0 Ty2; 
            0           0        1 Tz2; 
            0           0        0  1];

%FRAME 3 TO 2
theta3 = -pi/2;
Tx3 = 20;
Ty3 = 0;
Tz3 = 0;
XRT3 = [1      0           0        Tx3; 
        0  cos(theta3) -sin(theta3) Ty3; 
        0  sin(theta3)  cos(theta3) Tz3; 
        0      0           0        1];

%FRAME 4 TO 3
theta4 = -pi/2;
Tx4 = 0;
Ty4 = 0;
Tz4 = 120;
XRT4 = [1      0           0        Tx4; 
        0  cos(theta4) -sin(theta4) Ty4; 
        0  sin(theta4)  cos(theta4) Tz4; 
        0      0           0         1];


%FRAME 5 TO 4
theta5 = pi/2;
Tx5 = 0;
Ty5 = 0;
Tz5 = 0;
XRT5 = [1      0           0        Tx5; 
        0  cos(theta5) -sin(theta5) Ty5; 
        0  sin(theta5)  cos(theta5) Tz5; 
        0      0           0         1];

%FRAME 6 TO 5
theta6 = 0;
Tx6 = 0;
Ty6 = 0;
Tz6 = 30;
ZRT6 = [cos(theta6) -sin(theta6) 0 Tx6; 
        sin(theta6)  cos(theta6) 0 Ty6; 
            0           0        1 Tz6; 
            0           0        0  1];

%OUTPUT THE PRODUCT OF ALL 6 HOMOGENEOUS MATRICES       
output = XRT1 * ZRT2 * XRT3 * XRT4 * XRT5 * ZRT6;

end