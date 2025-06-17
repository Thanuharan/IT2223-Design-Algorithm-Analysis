marks  = zeros(1,5);
grades = strings(1,5);
disp('Enter marks for 5 students (out of 100): ');

for i = 1:5
    marks(i) = input(['Enter marks for student ',num2str(i),': ']);

    if marks(i) >= 90 && marks(i) <= 100
        grades(i) = 'A';
    elseif marks(i)>=80 && marks(i)<=89
        grades(i) = 'B';
    elseif marks(i)>= 70 && marks(i) <= 79
        grades(i) = 'C';
    elseif marks(i) >= 60 && marks(i) <= 69
        grades(i) = 'D';
    else
        grades(i) = 'F';
    end
disp(['Grade for student ',num2str(i),': ',grades(i)]);
end
while true
    disp('Menu');
    disp('1. Show all marks as a bar chart');
    disp('2. Show average marks');
    disp('3. Exit');

    choice = input('Enter your choice (1/2/3): ');

    switch choice
        case 1
            bar(marks);
            title('Marks of Students');
            xlabel('Student Number');
            ylabel('Marks');
            grid on;
        case 2
            avgMarks =  mean(marks);
            disp(['Average Marks: ',num2str(avgMarks)]);
        case 3
            disp('Thank you!');
            break;
        otherwise
            disp('Invalid choice. Please try again');
    end
end
