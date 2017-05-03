/*********************************************
  USING DATA STEP 
  Perhaps the simplest and most old-fashioned
  way to read in data.
**********************************************/

data presidents;
  input name $ party $ start end age;
  cards;
Ford R 1974 1977 61
Carter D 1977 1981 52
Reagan R 1981 1989 69
Bush41 R 1989 1993 64
Clinton D 1993 2001 46
Bush43 R 2001 2009 54
Obama D 2009 2017 47
Trump R 2017 . 70
; 
  /*
  'data' names the data file,
  'input' lists the variables,
  'cards' feeds the data in, reference to IBM cards,
  period denotes a missing value
  */

/*********************************************
  USING INFILE
  Reading in a text-formatted data from a file
**********************************************/

data presidents;
  input name $ party $ start end age;
  infile '~/files/presidents.txt' dlm=' ' lrecl=1024;
  /*
  'infile' points to the file, 'dlm' specifies a
  delimiter, 'lrecl' gives upper limit
  on how long a line before SAS gives up
  */

/*********************************************
  USING PROC IMPORT
  Reading in Excel or .csv files
**********************************************/

proc import datafile='~/files/presidents.xls' out=presidents dbms=excel;
  sheet='Sheet1';
  /*
  'datafile' specifies the file to be imported,
  'out' names the data file to be generated in SAS,
  'dbms' specifies what type of file,
    use excel for .xls,
    use xlsx for .xlsx,
    use csv for .csv,
  */
