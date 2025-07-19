proc import datafile="/home/u63511609/BigDataFinalProject/matches.csv"
    out=permier_league
    dbms=csv
    replace;
    guessingrows=32767; 
run;

proc means data=permier_league sum;
    class team; /* Group by the 'team' variable */
    var sh gf ga sot dist fk pk xg xga poss pkatt attendance; /* Specify the numeric columns to sum */
    output out=team_summary sum=; /* Create a summary dataset */
run;

/* Print the summarized dataset */
proc print data=team_summary;
    where _TYPE_ = 1; /* Keep only the grouped rows, excluding the overall summary (_TYPE_ = 0) */
    var team sh gf ga sot dist fk pk xg xga poss pkatt attendance;
run;



/* Calculate the mean of specific numeric columns grouped by 'team' */
proc means data=permier_league noprint;
    class team; 
    var dist xg xga poss; 
    output out=result_mean mean=dist_mean xg_mean xga_mean poss_mean; 
run;

proc print data=result_mean;
run;


/*Saving the most formations used in a csv file */
/*Defining the library */
libname EPL "/home/u63511609/BigDataFinalProject"; 

/*Capturing the PROC FREQ output in a dataset */
ods output OneWayFreqs=freq_output; 
proc freq data=permier_league;
    tables formation / nocum; 
run;
ods output close;

/*Exporting the dataset to a CSV file */
proc export data=freq_output
    outfile="/home/u63511609/BigDataFinalProject/formation_freq.csv"
    dbms=csv
    replace; 
run;

/*Importing the CSV file into the EPL library */
proc import datafile="/home/u63511609/BigDataFinalProject/formation_freq.csv"
    out=EPL.formation_freq 
    dbms=csv
    replace;
    guessingrows=max; 
run;










