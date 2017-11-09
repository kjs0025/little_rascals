clc
clear
altitude = 90000;
[ density, pressure,nu, a, temperature] = std_atmosphere( altitude,1);



p = [];
t = [];
altitude =  0:100:100000;
for alt = altitude
    [density, pressure,nu, a, temperature] = std_atmosphere( alt,1);
    p(end+1) = pressure;
    t(end+1) = temperature;
end


figure(1)
plot(p,altitude);
xlabel('Pressure (pa)');
ylabel('Altitude (m)');
title('Pressure VS Altitude');

figure(2)
plot(t,altitude);
xlabel('Temperature (K)');
ylabel('Altitude (m)');
title('Temperature VS Altitude');