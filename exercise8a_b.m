function y = cube(x)
%cubic function that returns x^3 of the number
y = x.^3;
end
function z = circle_area(r)
%calculates the area of the circle which is A = pi*r^2
z = pi.*r.^2;
end

disp(cube(3));
disp(circle_area(4));