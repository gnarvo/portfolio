function [XRT5] = Frame5to4

%FRAME 5 TO 4 HAS A ROTATION OF 90 DEGREES IN THE X-AXIS
theta = pi/2;

%NO TRANSLATION IN THE X-AXIS
Tx = 0;
%NO TRANSLATION IN THE Y-AXIS
Ty = 0;
%NO TRANSLATION IN THE Z-AXIS
Tz = 0;

%HOMOGENEOUS OUTPUT FOR FRAME 5 TO 4
XRT5 = [1      0           0      Tx; 
        0  cos(theta) -sin(theta) Ty; 
        0  sin(theta)  cos(theta) Tz; 
        0      0           0       1];
    
end
