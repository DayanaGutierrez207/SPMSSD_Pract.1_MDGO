%funcion ode que resuelve numericamente el sistema
[t, x]=ode45(@practica1, [0 5], [0; 0; 0.017; 0]);
%figura de grafica
figure;
subplot(2,2,1);
plot(t, x(:,1), 'r');
xlabel('Tiempo (s)');
title('Posición del carro');

subplot(2,2,2);
plot(t, x(:,2), 'g');
xlabel('Tiempo (s)');
title('Velocidad del carro');

subplot(2,2,3);
plot(t, x(:,3), 'b');
xlabel('Tiempo (s)');
title('Ángulo del péndulo');

subplot(2,2,4);
plot(t, x(:,4), 'k');
xlabel('Tiempo (s)');
title('Velocidad angular del péndulo');
