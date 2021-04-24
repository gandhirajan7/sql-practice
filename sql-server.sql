/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

/*
The PADS
*/
select Name + '(' +LEFT(Occupation,1) + ')' 
as val
FROM OCCUPATIONS
order by Name;
select  
CASE 
WHen OCCUPATION = 'Doctor' then 'There are a total of ' + str(count(*)) + ' doctors.' 
WHen OCCUPATION = 'Singer' then 'There are a total of ' + str(count(*)) + ' singers.' 
WHen OCCUPATION = 'Actor' then 'There are a total of ' + str(count(*)) + ' actors.' 
WHen OCCUPATION = 'Professor' then 'There are a total of ' + str(count(*)) + ' professors.' 
end
from OCCUPATIONS 
group by Occupation
order by count(*) asc, occupation asc;
