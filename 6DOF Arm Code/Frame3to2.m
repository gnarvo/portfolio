function [XRT3] = Frame3to2

%FRAME 3 TO 2 HAS A ROTATION OF -90 DEGREES IN THE X-AXIS
theta = -pi/2;

%TRANSLATION OF 20 IN THE X-AXIS
Tx = 20;
%NO TRANSLATION IN THE Y-AXIS
Ty = 0;
%NO TRANSLATION IN THE Z-AXIS
Tz = 0;

%HOMOGENEOUS OUTPUT FOR FRAME 3 TO 2
XRT3 = [1      0           0      Tx; 
        0  cos(theta) -sin(theta) Ty; 
        0  sin(theta)  cos(theta) Tz; 
        0      0           0       1];

end