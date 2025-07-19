proc sql;
    create table referee_stats as
    select referee,
           count(distinct team) as Total_Teams,
           sum(case when result = 'W' then 1 else 0 end) as Total_Wins,
           sum(case when result = 'D' then 1 else 0 end) as Total_Draws,
           sum(case when result = 'L' then 1 else 0 end) as Total_Losses
    from matches
    group by referee
    order by referee;
quit;

/* Ensure all referees are included, even if they have missing stats */
proc sql;
    create table all_referees as
    select distinct referee from matches;
quit;

proc sql;
    create table final_referee_stats as
    select a.referee,
           coalesce(b.Total_Teams, 0) as Total_Teams,
           coalesce(b.Total_Wins, 0) as Total_Wins,
           coalesce(b.Total_Draws, 0) as Total_Draws,
           coalesce(b.Total_Losses, 0) as Total_Losses
    from all_referees as a
    left join referee_stats as b
    on a.referee = b.referee
    order by a.referee;
quit;

/* Display the result */
proc print data=final_referee_stats noobs;
    var Referee Total_Wins Total_Draws Total_Losses Total_Teams;
run;
