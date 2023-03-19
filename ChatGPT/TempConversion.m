% This script will convert temperature from Celsius to Fahrenheit 

% This script was made by chat GPT
% https://openai.com/blog/chatgpt
% March 2023

% Here's how the script works:

% The script first prompts the user to enter the
% temperature in Fahrenheit using the input function
% and stores the input value in the variable F.

% The script then uses the formula (F - 32) * (5/9) to
% convert the temperature from Fahrenheit to Celsius
% and stores the result in the variable C.

% Finally, the script uses the fprintf function to display
% the converted temperature in Celsius.

% You can save this script with any name and run it
% from the command window.

% Ask user to input temperature in Fahrenheit
F = input('Enter temperature in Fahrenheit: ');

% Convert temperature from Fahrenheit to Celsius
C = (F - 32) * (5/9);

% Display the converted temperature in Celsius
fprintf('Temperature in Celsius: %f\n', C);
