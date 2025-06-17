
balance = 1000;

while true
    fprintf('\n ATM Menu \n');
    fprintf('1. Deposit \n');
    fprintf('2. Withdraw \n');
    fprintf('3. Balance Inquiry \n');
    fprintf('4. Exit \n');

    choice = input('Please select an option(1-4): ');

    switch choice
        case 1
            depositAmount = input('Enter deposit amount: ');
            if depositAmount >0
                balance = balance + depositAmount;
                fprintf('Deposit successful! Your new balance is %.2f\n ',balance);
            else
                fprintf('Invalid amount.Please enter a positive value.\n')
            end
        case 2
            withdrawAmount = input('Enter withdrawal amount: ');
            if withdrawAmount > 0
                if withdrawAmount <= balance
                    balance = balance - withdrawAmount;
                    fprintf('Withdrawal successful! Your new balance is %.2f\n',balance);
                else
                    fprintf('Insufficient funds. Your balance is %.2f\n',balance);
                end
            else
                fprintf('Invalid amount. Please enter a postive value.\n');
            end
        case 3
            fprintf('Your current balace is: %.2f\n',balance);
        case 4
            fprintf('Thank you! \n');
            break
        otherwise
            fprintf('Invalid choice. Please select a valid option .\n');
    end
end

            