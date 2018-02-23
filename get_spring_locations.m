function [spring1, spring2] = get_spring_locations(theta1, theta2_shift, delta1, delta2)
    global L_1 L_2 L_c1 L_c2 time_step
    % spring locations for animation
    spring1 = [cos(theta1)*(L_c1-delta1); sin(theta1)*(L_c1-delta1)];
    spring2 = [cos(theta1)*L_1+cos(theta1+theta2_shift)*(L_c2-delta2); sin(theta1)*L_1+sin(theta1+theta2_shift)*(L_c2-delta2)];


end 