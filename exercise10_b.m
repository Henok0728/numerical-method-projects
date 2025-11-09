%initalize the range which even is evaluated
x = 1:20;
% initalize the sum
sum = 0;
% rem function is the % operator version of matlab which gives the 
for i = x
      if rem(i,2) == 0 
            %increment the sum whenever even is found
            sum = sum + i;
      end
end
%printing the sum
disp("sum of the even numbers from 1 to 20 = "+ sum);