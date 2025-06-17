
n=100 ;

tic; % start time

for i=1:n
    disp(i);
end

elapsedTime = toc; % End timing and store elapsed time

fprintf('Elapsedtime:%f seconds\n',elapsedTime);