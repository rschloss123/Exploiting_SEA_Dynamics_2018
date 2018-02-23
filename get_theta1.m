% Joint angle for ankle
function theta1 = get_theta1(x)
% parameters (m)
a = 0.21;
b = 0.04;
c = 0.02;
phi = atan(c/b);
% get theta from x via the law of cosines
theta1 = phi + acos((- x^2 + a^2 + b^2)/(2*a*b));

end 