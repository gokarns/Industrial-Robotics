clc 
clear 
t=input('Enter translation amount: '); 
r=input('Enter rotation amount: '); 
r=(r*pi)/180; 
c=cos(r); 
s=sin(r); 
ch=menu('Enter the axis','First axis','Second axis','Third axis'); 
switch ch 
case 1 
T=[1 0 0 t;0 1 0 0;0 0 1 0;0 0 0 1]; 
R=[1 0 0 0;0 c -s 0;0 s c 0;0 0 0 1]; 
case 2 
T=[1 0 0 0;0 1 0 t;0 0 1 0;0 0 0 1]; 
R=[c 0 s 0;0 1 0 0;-s 0 c 0;0 0 0 1]; 
case 3 
T=[1 0 0 0;0 1 0 0;0 0 1 t;0 0 0 1]; 
R=[c -s 0 0;s c 0 0;0 0 1 0;0 0 0 1]; 
end 
SCREW1=T*R; 
SCREW2=R*T; 
if SCREW1==SCREW2 
display('The SCREW transformation is CUMULATIVE'); 
SCREW1 
else 
display('The SCREW transformation is NOT CUMULATIVE'); 
end 