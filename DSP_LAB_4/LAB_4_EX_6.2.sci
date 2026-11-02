clear;
clc;

x = [1,2,-3,2,1];
h = [1,0,-1];

Nx = length(x);
Nh = length(h);
Ny = Nx + Nh - 1;

y=zeros(1, Ny);

for n0 = 0:Ny-1
    
    sum_value = 0;
    
    for k=0:Nh-1
        x_index = n0 - k;
        
        if x_index >= 0 & x_index < Nx then
            
            product = h(k+1)*x(x_index + 1);
            sum_value = sum_value + product;
            
         end
     end
     
     y(n0+1) = sum_value
end

disp("Input signal x(n):");
disp(x);

disp("Impulse response h(n):");
disp(h);

disp("Convolution output y(n):");
disp(y);

nx = 0:Nx-1;
nh = 0:Nh-1;
ny = 0:Ny-1;

scf(0);
clf();

// Original input signal
subplot(3, 1, 1);
plot2d3(nx, x, 2);
xgrid();
xtitle("Input Signal x(n)", "Time Index n", "Amplitude");

// Impulse response
subplot(3, 1, 2);
plot2d3(nh, h, 5);
xgrid();
xtitle("Impulse Response h(n)", "Time Index n", "Amplitude");

// Convolution output
subplot(3, 1, 3);
plot2d3(ny, y, 3);
xgrid();
xtitle("Convolution Output y(n)", "Time Index n", "Amplitude");
