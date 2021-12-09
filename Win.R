Win<-function(var1,var2){
 attach(mydata)
myfirstmodel<-lm(sqrt(Wlratio)~R+ERA, data=mydata)
   Wins=fitted.values(myfirstmodel)
  comparisontable=cbind(teamID,Wins)
   teamnames=c("Arizona Diamondbacks", "Atlanta Braves", "Baltimore Orioles", "Boston Red Sox", "Chicago White Sox", "Chicago Cubs", "Cincinnati Reds", "Cleveland Indians", "Colorado Rockies", "Detroit Tigers", "Houston Astros","Kansas City Royals","Los Angeles Angels", "Los Angeles Dodgers", "Miami Marlins", "Milwaukee Brewers", "Minnesota Twins", "New York Yankees","New York Mets", "Oakland Athletics", "Philadelphia Phillies","Pittsburgh Pirates", "San Diego Padres", "Seattle Mariners","San Francisco Giants","St. Louis Cardinals", "Tampa Bay Rays", "Texas Rangers", "Toronto Blue Jays", "Washington Nationals")
looktable1=cbind(teamnames, teamID)
for (i in 1:length(teamID)) if (var1==looktable1[i,1]) varone=comparisontable[i,2]
for (i in 1:length(teamID)) if (var2==looktable1[i,1]) vartwo=comparisontable[i,2]
detach(mydata)
if (varone>vartwo) print(paste(var1, "win!")) else if (vartwo>varone) print(paste(var2, "win!") ) else print("It is a tie!")}
