function dz=practica1(t,z)

%parametros del sistema
ip=0.0079;
mc=0.7031;
lp=0.3302;
mp=0.23;
fc=0;
beq=4.3;
g=9.81;
bp=0.0024;

dz=zeros(4,1);

%representación de espacios de estado
dz(1)=z(2);
dz(2)=((ip+mp*lp^2)*fc+mp^2*lp^2*g*cos(z(3))*sin(z(3))+(ip+mp*lp^2)*beq*z(2)-(ip*mp*lp-mp^2*lp^3)*z(4)^2*sin(z(3))-mp*lp*z(4)*cos(z(3))*bp)/(((mc+mp)*ip)+(mc*mp*lp^2)+(mp^2*lp^2*sin(z(3))^2));
dz(3)=z(4);
dz(4)=((mc+mp)*mp*g*lp*sin(z(3))-(mc+mp)*bp*z(4)+fc*mp*lp*cos(z(3))-mp^2*lp^2*z(4)^2*sin(z(3))*cos(z(3))-beq*mp*lp*z(2)*cos(z(3)))/(((mc+mp)*ip)+(mc*mp*lp^2)+(mp^2*lp^2*sin(z(3))^2));