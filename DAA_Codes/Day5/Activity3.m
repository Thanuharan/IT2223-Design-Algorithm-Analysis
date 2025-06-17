 
numOfVoters = input('Enter the total number of voters: ');
votes = zeros(1,4);

for i=1:numOfVoters
    fprintf('1. Candiate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    choice = input('Enter your choice (1-4): ');
    switch choice
        case 1 
            votes(1)=votes(1)+1;
        case 2
            votes(2)=votes(2)+1;
            case 3
            votes(3) = votes(3) + 1;
        case 4
            votes(4) = votes(4) + 1;  
        otherwise
            fprintf('Invalid vote!\n');
    end
end

fprintf('\nVote Counts:\n');
fprintf('Candidate A: %d\n', votes(1));
fprintf('Candidate B: %d\n', votes(2));
fprintf('Candidate C: %d\n', votes(3));
fprintf('Candidate D: %d\n', votes(4));

[~, winnerIndex] = max(votes);
if votes(1) == votes(2) && votes(1) == votes(3) && votes(1) == votes(4)
    fprintf('Its a tie! No clear winner.\n');
else
    fprintf('The winner is Candidate %c!\n', 'A' + winnerIndex - 1);
end
while true
    fprintf('\nResult Visualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (Creative Visualization)\n');
    fprintf('4. Exit\n');
    visChoice = input('Enter your choice: ');
    
    switch visChoice
       case 1
            bar(votes);
            title('Bar Chart of Votes');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
               case 2
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Pie Chart of Votes');
        case 3
            scatter(1:4, votes, 100, 'filled');
            title('Scatter Plot of Votes');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 4
            fprintf('Exiting visualization menu. Thank you!\n');
            break;
        otherwise
            fprintf('Invalid choice! Please try again.\n');
    end
end


