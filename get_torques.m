% Compute the torques (N-m) produced by the two actuators     
function [T1,T2] = get_torques(H11, H22, H12, H21, h, G1, G2,...
    theta_doubledot1, theta_double_dot2, theta_dot2, theta_dot1)
    T1 = H11*theta_doubledot1+H12*theta_double_dot2-h*theta_dot2^2-2*h*theta_dot1*theta_dot2+G1;
    T2 = H22*theta_double_dot2+H21*theta_doubledot1+h*theta_dot1^2+G2;   
    
    
end 