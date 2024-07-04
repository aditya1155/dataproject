/*Combine Medal Counts with Athlete Details:*/
SELECT athletes.Name, athletes.NOC, athletes.Discipline, Medals.Gold, Medals.Silver, Medals.Bronze
FROM Medals 
JOIN athletes  ON athletes.NOC = Medals."Team_NOC";

/*Aggregate Medal Counts by country:*/
SELECT Team_NOC, SUM(Gold) AS Total_Gold, SUM(Silver) AS Total_Silver, SUM(Bronze) AS Total_Bronze
FROM Medals
GROUP BY Team_NOC; 

/*Visualize Total Athletes by Gender and Discipline:*/
SELECT Discipline, Female, Male, Total
FROM Entriesgender;

/*Count the number of atheletes from each country:*/
Select NOC, COUNT(*) AS Totalatheletes
FROM athletes
GROUP BY NOC
ORDER BY Totalatheletes DESC;




