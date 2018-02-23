% Joint angle for knee
function theta2=get_theta_2(x)
% parameters (m)
a = 0.2;
b = 0.05;
c = 0.04;
d = 0.04;
e = 0.03;
f = 0.03;
q = 0.01;

phi2 = deg2rad(30); % rad

psi = atan(q/a)+acos((-x^2+b^2+a^2+q^2)/(2*b*sqrt(a^2+q^2)));
mu = sqrt(f^2+c^2-2*f*c*cos(phi2+psi));
h1 = acos((mu^2+e^2-d^2)/(2*mu*e));
h2 = acos((mu^2+f^2-c^2)/(2*mu*f));
theta2 = h1+h2; % rad
end




