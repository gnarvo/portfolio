function [XRT1] = Frame1to0

%FRAME 1 TO 0 HAS A ROTATION OF -90 DEGREES IN THE X-AXIS
theta = -pi/2;

%TRANSLATION 29.5 IN THE X-AXIS
Tx = 29.5;
%NO TRANSLATION IN THE Y-AXIS
Ty = 0;
%NO TRANSLATION IN THE Z-AXIS
Tz = 108;

%HOMOGENEOUS OUTPUT FOR FRAME 1 TO 0
XRT1 = [1      0           0      Tx; 
        0  cos(theta) -sin(theta) Ty; 
        0  sin(theta)  cos(theta) Tz; 
        0      0           0       1];

end
