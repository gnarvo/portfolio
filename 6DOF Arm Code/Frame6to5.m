function [ZRT6] = Frame6to5

%FRAME 6 TO 5 HAS A ROTATION OF 0 DEGREES IN THE Z-AXIS
theta = 0;

%NO TRANSLATION IN THE X-AXIS
Tx = 0;
%NO TRANSLATION IN THE Y-AXIS
Ty = 0;
%TRANSLATION OF 30 IN THE Z-AXIS
Tz = 30;

%HOMOGENEOUS OUTPUT FOR FRAME 6 TO 5
ZRT6 = [cos(theta) -sin(theta) 0 Tx; 
        sin(theta)  cos(theta) 0 Ty; 
            0           0      1 Tz; 
            0           0      0  1];
        
end