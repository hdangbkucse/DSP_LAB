
clear;
clc;
clf();

r = 0.8;
w0 = %pi/4;

// Calculate pole locations
p1_real = r*cos(w0);
p1_imag = r*sin(w0);

p2_real = r*cos(w0);
p2_imag = -r*sin(w0);

// Circle for reference (unit circle)
theta = linspace(0, 2*%pi, 300);

// Draw unit circle
xpoly(cos(theta), sin(theta), "lines");

// Draw real and imaginary axes
xpoly([-1.2, 1.2], [0, 0], "lines");
xpoly([0, 0], [-1.2, 1.2], "lines");

// Draw zero at the origin (small circle)
d = 0.035;
xpoly(d*cos(theta), d*sin(theta), "lines");

// Draw pole p1 (upper half-plane)
d = 0.04;
xpoly([p1_real-d, p1_real+d], ...
      [p1_imag-d, p1_imag+d], "lines");

xpoly([p1_real-d, p1_real+d], ...
      [p1_imag+d, p1_imag-d], "lines");

// Draw pole p2 (lower half-plane)
xpoly([p2_real-d, p2_real+d], ...
      [p2_imag-d, p2_imag+d], "lines");

xpoly([p2_real-d, p2_real+d], ...
      [p2_imag+d, p2_imag-d], "lines");

a = gca();
a.data_bounds = [-1.2, -1.2; 1.2, 1.2];
a.isoview = "on";

title("Pole-Zero Plot of x(n)");
xlabel("Real Axis Re(z)");
ylabel("Imaginary Axis Im(z)");

xgrid();

xstring(0.05, 0.05, "Zero");
xstring(p1_real+0.06, p1_imag, "Pole 1");
xstring(p2_real+0.06, p2_imag, "Pole 2");

