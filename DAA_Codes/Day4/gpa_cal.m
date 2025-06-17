%Calculate the gpa:


totalPoints=0;
totalCredits=0;

for i=1:5
    grade=input(['Enter the grade for course',num2str(i),''],"s");

    credits=input(['Enter the credit hours for course',num2str(i),':']);

    switch upper(grade)
        case 'A'
            points = 4;
        case 'B'
            points = 3;
        case 'C'
            points = 2;
        case 'D'
            points = 1;
        case 'F'
            points =0;
        otherwise
            error('Invalid grade entered. please enter A,B,C,D or F');
    end
    totalPoints = totalPoints + (points*credits);
    totalCredits = totalCredits + credits;
end

GPA = totalPoints / totalCredits;
fprintf('Your GPA is: %.2f\n',GPA)
 

