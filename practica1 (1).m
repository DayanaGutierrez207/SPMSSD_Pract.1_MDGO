function dz=practica1(t,z)

%parametros del sistema
Ip = 0.0079;      % Momento de inercia del péndulo
Mc = 0.7031;      % Masa del carro
lp = 0.3302;      % Longitud desde el pivote hasta el centro de gravedad 
Mp = 0.23;        % Masa del péndulo 
Fc = 0;           % Fuerza aplicada al carro
Beq = 4.3;        % Coeficiente de amortiguamiento viscoso del motor 
g = 9.81;         % Gravedad
Bp = 0.0024;      % Coeficiente de amortiguamiento viscoso del péndulo 

dz=zeros(4,1);
dz(1)=z(2);
dz(3)=z(4);

%representación de espacios de estado
D = (Mc + Mp)*Ip + Mc*Mp*lp^2 + Mp^2*lp^2*sin(z(3))^2;
    
    dz(2) = ((Ip + Mp*lp^2)*Fc + Mp^2*lp^2*g*cos(z(3))*sin(z(3)) - (Ip + Mp*lp^2)*Beq*z(2) ...
            - (Ip*Mp*lp - Mp^2*lp^3)*z(4)^2*sin(z(3)) - Mp*lp*z(4)*cos(z(3))*Bp) / D;
    
    dz(4) = ((Mc + Mp)*Mp*g*lp*sin(z(3)) - (Mc + Mp)*Bp*z(4) + Fc*Mp*lp*cos(z(3)) ...
            - Mp^2*lp^2*z(4)^2*sin(z(3))*cos(z(3)) - Beq*Mp*lp*z(2)*cos(z(3))) / D;
end