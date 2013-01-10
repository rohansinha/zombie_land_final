/*================================================================VARIABLES===============================================================*/
int Screen = 1;             //screen display variable
int previousScreen = 0;         //screen the user was on before entering the one they are on now
int mathQuestion1;          //random int to choose the zombies for Level 1
int mathQuestion2;          //random int to choose the zombies for Level 1
int mathQuestion3;          //random int to choose the zombies for Level 1
int mathQuestion4;          //random int to choose the zombies for Level 1
int mathQuestion5;          //random int to choose the zombies for Level 1


int englishQuestion1;       //random int to choose the zombies for Level 2
int englishQuestion2;       //random int to choose the zombies for Level 2
int englishQuestion3;       //random int to choose the zombies for Level 2
int englishQuestion4;       //random int to choose the zombies for Level 2
int englishQuestion5;       //random int to choose the zombies for Level 2
int leftArmQuestion;        //random int to choose the boss for Boss Level
int rightArmQuestion;       //random int to choose the zombies for Boss Level
int leftLegQuestion;        //random int to choose the zombies for Boss Level
int rightLegQuestion;       //random int to choose the zombies for Boss Level
int chestQuestion;          //random int to choose the zombies for Boss Level


int fr = 500;               //Variable to control framerate
int score, character;       //Socre: score keeping int-----character: chosen character
float cur = 575;            //cursor placement for text
float textY = 550;          //Y co-ordinate of text input

float zombie1to5Y = 30;             //Y co-ordinate of zombies 1-5..........Math Zombies
float zombie6to10Y = 30;            //Y co-ordinate of zombies 6-10.........English Zombies
int bossWidth;              //Width of boss
int bossHeight;             //Height of boss
float bossX;                //X Co-ordinate for boss
float bossY;                //Y Co-ordinate for boss

String answer = "";         //answer that is typed is stored in this string (variable)
int cheat = 0;                //int to check the current key variable to enable cheat mode

float wandX = mouseX - 73.5;
int wandY = 351;
int moveToToutorialPlay = 0;
/*================================================================VARIABLES===============================================================*/


/*==================================================================CHAR==================================================================*/
char a = 'a';
char b = 'b';
char c = 'c';
char d = 'd';
char e = 'e';
char f = 'f';
char g = 'g';
char h = 'h';
char i = 'i';
char j = 'j';
char k = 'k';
char l = 'l';
char m = 'm';
char n = 'n';
char o = 'o';
char p = 'p';
char q = 'q';
char r = 'r';
char s = 's';
char t = 't';
char u = 'u';
char v = 'v';
char w = 'w';
char x = 'x';
char y = 'y';
char z = 'z';
/*==================================================================CHAR==================================================================*/
