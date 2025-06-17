.... string function    
string function
str1='apple';
str2='banana';
result=strcat(str1,str2);
disp(result)

x={'hello','world','sri'};
result2=strcat(x{:});
disp(result2)

result3=strjoin(x,': ');
disp(result3)

str1='age';
str2='age';
strcmp(str1,str2)

stril='the cat sat on the mat';
indic=strfind(stril,'cat')

stril='the cat sat on the mat';
old='cat';
new='dog';
strrep(stril,old,new)

inputstring='apple,banana,orange,grapes';
substring=strsplit(inputstring,',')

st1='apPPLE';
lower(st1)
upper(st1)
    
strtrim(' hello world ') %Remove infront and end space