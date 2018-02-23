% derivative of joint angle with respect to actuator length for the ankle
function [T_dot1, Tddot1] = get_ankle_jacobian(x1)

    T_dot1 = (2500*x1)/(21*(1 - ((1250*x1^2)/21 - 457/168)^2)^(1/2));
    Tddot1 = 2500/(21*(1 - ((1250*x1^2)/21 - 457/168)^2)^(1/2)) + (6250000*x1^2*((1250*x1^2)/21 - 457/168))/(441*(1 - ((1250*x1^2)/21 - 457/168)^2)^(3/2));
    
end 