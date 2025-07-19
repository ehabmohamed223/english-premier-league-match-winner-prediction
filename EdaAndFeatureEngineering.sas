proc import datafile="/home/u63511609/BigDataFinalProject/matches.csv"
    out=permier_league
    dbms=csv
    replace;
    guessingrows=32767; 
run;



/* EDA */



/*checking null values*/

proc means data=permier_league nmiss;
    var _numeric_; /* Check all numeric variables for missing values */
run;


proc freq data=permier_league;
    tables _character_ / missing; /* Check all character variables for missing values */
run;


proc means data=permier_league nmiss n;
    var _numeric_; 
    output out=numeric_missing_summary
        nmiss=Num_Missing
        n=Num_Total; 
run;

/* Print the summary dataset to view missing counts */
proc print data=numeric_missing_summary;
run;



/*checking if there are duplicated values */
/* Sort the dataset by all variables */

proc sort data=permier_league out=sorted_permier_league nodupkey dupout=duplicates;
    by _all_;
run;

proc sql;
    select count(*) as duplicate_count
    from duplicates;
quit;







/* Value Counts */
proc freq data=permier_league;
    tables team / nocum nopercent;
run;

/*checking data type of each feature*/
proc contents data=permier_league;
run;

/*adding venue feature*/
proc sort data=permier_league;
    by venue;
run;

data permier_league;
    set permier_league;
    if venue = "Home" then venue_code = 1;
    else if venue = "Away" then venue_code = 0;
run;

/* Transforming opponent feature into a numerical feature*/ 
proc format;
    value $opp_code
        'Tottenham' = 1
        'Norwich City' = 2
        'Arsenal' = 3
        'Leicester City' = 4
        'Southampton' = 5
        'Chelsea' = 6
        'Liverpool' = 7
        'Burnley' = 8
        'Brighton' = 9
        'Crystal Palace' = 10
        'Manchester Utd' = 11
        'Everton' = 12
        'West Ham' = 13
        'Aston Villa' = 14
        'Watford' = 15
        'Wolves' = 16
        'Leeds United' = 17
        'Newcastle Utd' = 18
        'Brentford' = 19
        'Manchester City' = 20
        'Sheffield Utd' = 21
        'Fulham' = 22
        'West Brom' = 23
        other = .;  /* for Handling any missing or unlisted values */
run;

data permier_league;
    set permier_league;
    opp_code = put(opponent, $opp_code.); /* Applies the format to create codes */
run;

/*handling hour feature */
data permier_league;
    set permier_league;
    hour = input(scan(time, 1, ':'), 8.); 
run;


/*Target Extraction*/
data permier_league;
    set permier_league;
    
    /* Create a new variable 'target' which is 1 if result is "W", otherwise 0 */
    if result = 'W' then target = 1;
    else target = 0;
run;

/* Print the first few rows to check the results */
proc print data=permier_league (obs=5);
    var result target;
run;


data permier_league;
    set permier_league;
    if result = 'W' then target = 1;
    else target = 0;
run;


proc freq data=permier_league;
    tables target / nocum nopercent;
run;

