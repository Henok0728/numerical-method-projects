%initalize the range
x = 1:20;
for i = x
      %the rem(a,b) operator is a%b version of matlab which returns the
      %remainder of the division of a and b
      if rem(i,2) == 0 
            %display the even numbers
            disp(i);
      end
end