function [ZRT1] = ZFunctions()

%FRAME 2 TO 1 HAS A ROTATION OF -90 DEGREES IN THE Z-AXIS
theta1 = -90;

%TRANSLATION IN THE X-AXIS
Tx1 = 120;
%TRANSLATION IN THE Y-AXIS
Ty1 = 0;
%TRANSLATION IN THE Z-AXIS
Tz1 = 0;

ZRT1 = [cos(theta1) -sin(theta1) 0 Tx1; sin(theta1) cos(theta1) 0 Ty1; 0 0 1 Tz1; 0 0 0 1];

end