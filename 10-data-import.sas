/*********************************************
  USING DATA STEP 
  Perhaps the simplest and most old-fashioned
  way to read in data.
**********************************************/

data presidents;  *names the data file;
  input name $ party $ start end age; *lists the variables;
  cards; *here comes the data, reference to IBM cards;
 Ford R 1974 1977 61
 Carter D 1977 1981 52
 Reagan R 1981 1989 69
 Bush41 R 1989 1993 64
 Clinton D 1993 2001 46
 Bush43 R 2001 2009 54
 Obama D 2009 2017 47
 Trump R 2017 . 70 *period denotes a missing value;
 ;
