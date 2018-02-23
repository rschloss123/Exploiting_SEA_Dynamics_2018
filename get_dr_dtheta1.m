% Change in actuator length with respect to joint angle for ankle
function output = get_dr_dtheta1(theta) 

output = (21*cos(theta - atan(1/2)))/(2500*(457/10000 - (21*cos(theta - atan(1/2)))/1250)^(1/2)) - (441*sin(theta - atan(1/2))^2)/(6250000*(457/10000 - (21*cos(theta - atan(1/2)))/1250)^(3/2));

end 