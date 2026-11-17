
clear;
clc;
clf();

// Angle used to draw circles
theta = linspace(0, 2*%pi, 300);

// ============================================
// Graph 1: Exercise 3.3 (a)
// ROC: 1/3 < |z| < 2
// Poles: z = 1/3 and z = 2
// ============================================
subplot(2, 2, 1);

R = 2.5;
plot([-R, R], [0, 0]);

a = gca();
a.data_bounds = [-R, -R; R, R];
a.isoview = "on";

xpoly([0, 0], [-R, R], "lines");

xpoly((1/3)*cos(theta), (1/3)*sin(theta), "lines");
xpoly(2*cos(theta), 2*sin(theta), "lines");

d = 0.06;
xpoly([1/3-d, 1/3+d], [-d, d], "lines");
xpoly([1/3-d, 1/3+d], [d, -d], "lines");

xpoly([2-d, 2+d], [-d, d], "lines");
xpoly([2-d, 2+d], [d, -d], "lines");

title("Exercise 3.3 (a)");
xlabel("Re(z)");
ylabel("Im(z)");
xstring(-2.3, 2.2, "ROC: 1/3 < |z| < 2");
xgrid();

// ============================================
// Graph 2: Exercise 3.3 (b)
// ROC: |z| > 2
// Poles: z = 1/3 and z = 2
// ============================================
subplot(2, 2, 2);

R = 3;
plot([-R, R], [0, 0]);

a = gca();
a.data_bounds = [-R, -R; R, R];
a.isoview = "on";

xpoly([0, 0], [-R, R], "lines");

xpoly(2*cos(theta), 2*sin(theta), "lines");

d = 0.07;
xpoly([1/3-d, 1/3+d], [-d, d], "lines");
xpoly([1/3-d, 1/3+d], [d, -d], "lines");

xpoly([2-d, 2+d], [-d, d], "lines");
xpoly([2-d, 2+d], [d, -d], "lines");

title("Exercise 3.3 (b)");
xlabel("Re(z)");
ylabel("Im(z)");
xstring(-2.7, 2.7, "ROC: |z| > 2");
xgrid();

// ============================================
// Graph 3: Exercise 3.3 (c)
// ROC: 1/3 < |z| < 2
// Time shifting does not change ROC boundaries
// ============================================
subplot(2, 2, 3);

R = 2.5;
plot([-R, R], [0, 0]);

a = gca();
a.data_bounds = [-R, -R; R, R];
a.isoview = "on";

xpoly([0, 0], [-R, R], "lines");

xpoly((1/3)*cos(theta), (1/3)*sin(theta), "lines");
xpoly(2*cos(theta), 2*sin(theta), "lines");

d = 0.06;
xpoly([1/3-d, 1/3+d], [-d, d], "lines");
xpoly([1/3-d, 1/3+d], [d, -d], "lines");

xpoly([2-d, 2+d], [-d, d], "lines");
xpoly([2-d, 2+d], [d, -d], "lines");

title("Exercise 3.3 (c)");
xlabel("Re(z)");
ylabel("Im(z)");
xstring(-2.3, 2.2, "ROC: 1/3 < |z| < 2");
xgrid();

// ============================================
// Graph 4: Exercise 3.3 (d)
// ROC: 1/2 < |z| < 3
// Poles: z = 1/2 and z = 3
// ============================================
subplot(2, 2, 4);

R = 3.5;
plot([-R, R], [0, 0]);

a = gca();
a.data_bounds = [-R, -R; R, R];
a.isoview = "on";

xpoly([0, 0], [-R, R], "lines");

xpoly((1/2)*cos(theta), (1/2)*sin(theta), "lines");
xpoly(3*cos(theta), 3*sin(theta), "lines");

d = 0.08;
xpoly([1/2-d, 1/2+d], [-d, d], "lines");
xpoly([1/2-d, 1/2+d], [d, -d], "lines");

xpoly([3-d, 3+d], [-d, d], "lines");
xpoly([3-d, 3+d], [d, -d], "lines");

title("Exercise 3.3 (d)");
xlabel("Re(z)");
ylabel("Im(z)");
xstring(-3.2, 3.2, "ROC: 1/2 < |z| < 3");
xgrid();
