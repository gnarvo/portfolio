function [XRT4] = Frame4to3

%FRAME 4 TO 3 HAS A ROTATION OF -90 DEGREES IN THE X-AXIS
theta = -pi/2;

%NO TRANSLATION IN THE X-AXIS
Tx = 0;
%NO TRANSLATION IN THE Y-AXIS
Ty = 0;
%TRANSLATION OF -120 IN THE Z-AXIS
Tz = 120;

%HOMOGENEOUS OUTPUT FOR FRAME 4 TO 3
XRT4 = [1      0           0      Tx; 
        0  cos(theta) -sin(theta) Ty; 
        0  sin(theta)  cos(theta) Tz; 
        0      0           0       1];

end
