Update University_Ranking Set Rank Primary Key;

Select * From University_Ranking;

Select Name ,Size From University_Ranking
Where Size = 'XL';

Select Name From University_Ranking Where Name Like 'M%';


Select Name , Status , Employer_Reputation_Score From University_Ranking;

Select Name ,Max(Rank) As Max_Rank 
 From University_Ranking
 Group By Name
 Order By Max(Rank) Desc;


 Select Name , Avg (Previous_Rank) As Avg_Previous_Rank
 From University_Ranking
  Group By Name
Order By Avg (Previous_Rank) Asc;


Select Name , Status , Region From University_Ranking
Where Status = 'Public';

Select Name , Status , Employment_Outcomes_Score From University_Ranking  
Where Status = 'Public';

Select Name ,International_Research_Network_SCORE,
Case 
     When International_Research_Network_SCORE > 200 
     Then 'University Is Good'

     When International_Research_Network_SCORE > 300
      Then 'University Is Very Good'

Else 'University Is Bad'

End As Performance

From University_Ranking;

Create View Test_Performance As 

Select Max (Academic_Reputation_SCORE) As Max_Aca_Sco ,Min (Academic_Reputation_SCORE) As Min_Aca_Sco
From University_Ranking;

Select U.Name , U.Size,UR.Region From University_Ranking U 
Join University_Ranking UR oN Rank.u = Rank.UR;