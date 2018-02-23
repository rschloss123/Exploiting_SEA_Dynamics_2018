% coefficients for link dynamic equations 
% Source: https://ocw.mit.edu/courses/mechanical-engineering/2-12-introduction-to-robotics-fall-2005/lecture-notes/chapter7.pdf
function [H11, H22, H12, H21, h, G1, G2] = get_dynamic_components(theta_1,theta_2)
global J1 J2 m_1 m_2 L_1 L_2 L_c1 L_c2 
% M(theta) = [H11 H12
%             H21 H22], without load adjustment
H11 = m_1*L_c1^2+J1+m_2*(L_1^2+L_c2^2+2*L_1*L_c2*cos(theta_2))+J2;
H22 = m_2*L_c2^2+J2;
H12 = m_2*(L_c2^2+L_1*L_c2*cos(theta_2))+J2;
H21 = H12; 
h = m_2*L_1*L_c2*sin(theta_2); % centrifugal contribution
% gravity considerations
G1 = m_1*L_c1*9.81*cos(theta_1)+m_2*9.81*(L_c2*cos(theta_1+theta_2)+L_1*cos(theta_1));
G2 = m_2*9.81*L_c2*cos(theta_1+theta_2);

end