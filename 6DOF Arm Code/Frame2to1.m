function [ZRT2] = Frame2to1

%FRAME 2 TO 1 HAS A ROTATION OF -90 DEGREES IN THE Z-AXIS
theta = -pi/2;

%NO TRANSLATION IN THE X-AXIS
Tx = 0;
%TRANSLATION OF -120 IN THE Y-AXIS
Ty = -120;
%NO TRANSLATION IN THE Z-AXIS
Tz = 0;

%HOMOGENEOUS OUTPUT FOR FRAME 2 TO 1
ZRT2 = [cos(theta) -sin(theta) 0 Tx; 
        sin(theta)  cos(theta) 0 Ty; 
            0           0      1 Tz; 
            0           0      0  1];

end