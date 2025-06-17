% write factorial use for loop

fact=1;
n=5;
for i=1:n
    fact=fact*i;
end
    disp(fact)

%diaplay types
  x=10
  disp(['The number is: ',num2str(x)])
  disp("The number is: "+x)
  fprintf('The number is: %d',x)
  y=sprintf('The number is: %d',x)
  disp(y)
 