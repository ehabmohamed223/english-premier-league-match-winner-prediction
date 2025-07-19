proc import datafile="/home/u63511609/BigDataFinalProject/matches.csv"
    out=permier_league
    dbms=csv
    replace;
    guessingrows=32767; 
run;

/*calc total scored goals by each team in home*/
proc sql;
    select sum(gf) as Total_Goals_Home
    from EPL.PERMIER_LEAGUE
    where venue = 'Home';
quit;

/*calculating thetotal scored goals Away*/
proc sql;
    select sum(gf) as Total_Goals_Away
    from EPL.PERMIER_LEAGUE
    where venue = 'Away';
quit;

/*Mean Scored Goals At Home*/
proc sql;
    select mean(gf) as Mean_Goals_Home
    from EPL.PERMIER_LEAGUE
    where venue = 'Home';
quit;

/*Mean Scored Goals At Away*/
proc sql;
    select mean(gf) as Mean_Goals_Away
    from EPL.PERMIER_LEAGUE
    where venue = 'Away';
quit;

/*Sum Conceded Goal Home*/
proc sql;
    select sum(ga) as Total_Goals_Against_Home
    from EPL.PERMIER_LEAGUE
    where venue = 'Home';
quit;

/*Sum Conceded Goal Away*/
proc sql;
    select sum(ga) as Total_Goals_Against_Away
    from EPL.PERMIER_LEAGUE
    where venue = 'Away';
quit;

/*Mean Conceded Goal Home*/
proc sql;
    select mean(ga) as Mean_Goals_Against_Home
    from EPL.PERMIER_LEAGUE
    where venue = 'Home';
quit;

/*Mean Conceded Goal Away*/
proc sql;
    select mean(ga) as Mean_Goals_Against_Away
    from EPL.PERMIER_LEAGUE
    where venue = 'Away';
quit;





