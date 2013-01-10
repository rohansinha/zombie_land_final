void topBar()
{
  fill(85, 20, 115);
  rect(0, 0, 800, 25);
  fill(255);
  textFont(scoreBar);
  textSize(30);
  if(Screen == 4)
  {
    text("Choose your Stage", 15, 23);
  }
  if(Screen == 5)
  {
    text("TUTORIAL", 15, 23);
  }
  if(Screen == 6)
  {
    text("Level 1", 15, 23);
  }
  if(Screen == 7)
  {
    text("Level 2", 15, 23);
  }
  if(Screen == 8)
  {
    text("THE BOSS", 15, 23);
  }
  if(Screen == 4)
  {
    text("Score "+score, 650, 23);
  }
  if(Screen == 5 || Screen == 6 || Screen == 7 || Screen == 8)
  {
    text("Score "+score, 550, 23);
  }
}

void textBox()
{
  fill(255);
  rect(575, 525, 200, 50);
  cur = 575;
}

void answerCheck()
{
  if(Screen == 5)                         //Tutorial Level
  {
    if(answer.equals("zombie land"))
    {
      //println("its correct");
      tutorialAnswer = true;
    }
  }
  if(Screen == 6)                         //LEVEL 1..........Math Questions
  {
    if(mathQuestion1 == 1 && answer.equals("0"))  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=FIX
    {
      answer1IsCorrect = true;
    } 
    else if(mathQuestion1 == 2 && answer.equals("2.8"))
    {
      answer1IsCorrect = true;
    } 
    else if(mathQuestion1 == 3 && answer.equals("107.98"))
    {
      answer1IsCorrect = true;
    } 
    else if(mathQuestion1 == 4 && answer.equals("1/4"))
    {
      answer1IsCorrect = true;
    } 
    else if(mathQuestion1 == 5 && answer.equals("62.15"))
    {
      answer1IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(mathQuestion2 == 6 && answer.equals("109.95"))
    {
      answer2IsCorrect = true;
    } 
    else if(mathQuestion2 == 7 && answer.equals("12.12"))  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=FIX
    {
      answer2IsCorrect = true;
    } 
    else if(mathQuestion2 == 8 && answer.equals("27.93"))
    {
      answer2IsCorrect = true;
    } 
    else if(mathQuestion2 == 9 && answer.equals("46/64"))
    {
      answer2IsCorrect = true;
    } 
    else if(mathQuestion2 == 10 && answer.equals("27/100"))
    {
      answer2IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(mathQuestion3 == 11 && answer.equals("2/7"))
    {
      answer3IsCorrect = true;
    } 
    else if(mathQuestion3 == 12 && answer.equals("125.04"))
    {
      answer3IsCorrect = true;
    } 
    else if(mathQuestion3 == 13 && answer.equals("162"))
    {
      answer3IsCorrect = true;
    } 
    else if(mathQuestion3 == 14 && answer.equals("11/9"))
    {
      answer3IsCorrect = true;
    } 
    else if(mathQuestion3 == 15 && answer.equals("8.91"))
    {
      answer3IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(mathQuestion4 == 16 && answer.equals("22.21"))
    {
      answer4IsCorrect = true;
    } 
    else if(mathQuestion4 == 17 && answer.equals("2/4"))
    {
      answer4IsCorrect = true;
    } 
    else if(mathQuestion4 == 18 && answer.equals("34/33"))
    {
      answer4IsCorrect = true;
    } 
    else if(mathQuestion4 == 19 && answer.equals("7/12"))
    {
      answer4IsCorrect = true;
    } 
    else if(mathQuestion4 == 20 && answer.equals("0.999"))
    {
      answer4IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(mathQuestion5 == 21 && answer.equals("10.03"))
    {
      answer5IsCorrect = true;
    } 
    else if(mathQuestion5 == 22 && answer.equals("8/9"))
    {
      answer5IsCorrect = true;
    } 
    else if(mathQuestion5 == 23 && answer.equals("37/73"))
    {
      answer5IsCorrect = true;
    } 
    else if(mathQuestion5 == 24 && answer.equals("25.78"))
    {
      answer5IsCorrect = true;
    } 
    else if(mathQuestion5 == 25 && answer.equals("9.09"))
    {
      answer5IsCorrect = true;
    }
  }
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  if(Screen == 7)                         //LEVEL 2..........English Questions
  {
    if(englishQuestion1 == 1 && answer.equals("were"))
    {
      answer6IsCorrect = true;
    } 
    else if(englishQuestion1 == 2 && answer.equals("were"))
    {
      answer6IsCorrect = true;
    } 
    else if(englishQuestion1 == 3 && answer.equals("has"))
    {
      answer6IsCorrect = true;
    } 
    /*else if(englishQuestion1 == 4 && answer.equals("were"))
    {
      answer6IsCorrect = true;
    } 
    else if(englishQuestion1 == 5 && answer.equals("was"))
    {
      answer6IsCorrect = true;
    }*/
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(englishQuestion2 == 4 && answer.equals("were"))
    {
      answer7IsCorrect = true;
    } 
    else if(englishQuestion2 == 5 && answer.equals("is"))
    {
      answer7IsCorrect = true;
    } 
    else if(englishQuestion2 == 6 && answer.equals("has"))
    {
      answer7IsCorrect = true;
    } 
    /*else if(englishQuestion2 == 4 && answer.equals("were"))
    {
      answer7IsCorrect = true;
    } 
    else if(englishQuestion2 == 5 && answer.equals("is"))
    {
      answer7IsCorrect = true;
    }*/
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(englishQuestion3 == 7 && answer.equals("are"))
    {
      answer8IsCorrect = true;
    } 
    else if(englishQuestion3 == 8 && answer.equals("were"))
    {
      answer8IsCorrect = true;
    } 
    else if(englishQuestion3 == 9 && answer.equals("is"))
    {
      answer8IsCorrect = true;
    } 
    else if(englishQuestion3 == 10 && answer.equals("is"))  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=FIX
    {
      answer8IsCorrect = true;
    } 
    /*else if(englishQuestion3 == 5 && answer.equals("go"))
    {
      answer8IsCorrect = true;
    }*/
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(englishQuestion4 == 11 && answer.equals("is"))
    {
      answer9IsCorrect = true;
    } 
    else if(englishQuestion4 == 12 && answer.equals("were"))
    {
      answer9IsCorrect = true;
    } 
    else if(englishQuestion4 == 13 && answer.equals("is"))
    {
      answer9IsCorrect = true;
    } 
    else if(englishQuestion4 == 14 && answer.equals("are"))
    {
    answer9IsCorrect = true;
    } 
    /*else if(englishQuestion4 == 5 && answer.equals(""))
    {
    answer9IsCorrect = true;
    }*/
     //**********************************************************************************************************************************************************************************
     //**********************************************************************************************************************************************************************************
     if(englishQuestion5 == 15 && answer.equals("is"))
     {
     answer10IsCorrect = true;
     } 
     else if(englishQuestion5 == 16 && answer.equals("are"))
     {
     answer10IsCorrect = true;
     }
     else if(englishQuestion5 == 17 && answer.equals("was"))
     {
     answer10IsCorrect = true;
     }
     else if(englishQuestion5 == 18 && answer.equals("has"))
     {
     answer10IsCorrect = true;
     } 
     /*else if(englishQuestion5 == 5 && answer.equals(""))
     {
     answer10IsCorrect = true;
     }*/
  }
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  //****************************************************************************************************************************************************************************
  if(Screen == 8)                         //BOSS LEVEL..........Human Body Questions
  {
    if(leftArmQuestion == 1 && answer.equals("tongue"))
    {
      bossAnswer1IsCorrect = true;
    } 
    else if(leftArmQuestion == 2 && answer.equals("ear"))
    {
      bossAnswer1IsCorrect = true;
    } 
    else if(leftArmQuestion == 3 && answer.equals("spine"))
    {
      bossAnswer1IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(rightArmQuestion == 1 && answer.equals("heart"))
    {
      bossAnswer2IsCorrect = true;
    } 
    else if(rightArmQuestion == 2 && answer.equals("liver"))
    {
      bossAnswer2IsCorrect = true;
    } 
    else if(rightArmQuestion == 3 && answer.equals("hinge joint"))
    {
      bossAnswer2IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(leftLegQuestion == 1 && answer.equals("gluteus maximus"))
    {
      bossAnswer3IsCorrect = true;
    } 
    else if(leftLegQuestion == 2 && answer.equals("skin"))
    {
      bossAnswer3IsCorrect = true;
    } 
    else if(leftLegQuestion == 3 && answer.equals("brain"))
    {
      bossAnswer3IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************
    if(rightLegQuestion == 1 && answer.equals("brain"))
    {
      bossAnswer4IsCorrect = true;
    } 
    else if(rightLegQuestion == 2 && answer.equals("hand"))
    {
      bossAnswer4IsCorrect = true;
    } 
    else if(rightLegQuestion == 3 && answer.equals("nose"))
    {
      bossAnswer4IsCorrect = true;
    }
    //****************************************************************************************************************************************************************************
    //****************************************************************************************************************************************************************************    
    if(chestQuestion == 1 && answer.equals("esophagus"))
    {
      bossAnswer5IsCorrect = true;
    } 
    else if(chestQuestion == 2 && answer.equals("eye"))
    {
      bossAnswer5IsCorrect = true;
    } 
    else if(chestQuestion == 3 && answer.equals("intestine"))
    {
      bossAnswer5IsCorrect = true;
    }
  }
  answer = "";
  textBox();
}

void wand()
{
  if(cursorOnZombie == false)
  {
    wand = loadImage("Images/Multiple Screen/wand.png");
  } else if(cursorOnZombie == true) {
    wand = loadImage("Images/Multiple Screen/wandGlow.png");
  }
  wandX = mouseX - 45;
  image(wand, wandX, wandY);
}

void unloadImages()
{
  if(Screen == 1)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    StoryA = null;                                   //Images for screen 3(Main Menu)
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)

    levelChooserBG = null;                            //Backgrounds for Screens 4, 5, 6, 7 & 8
    tutorialBG = null;                                //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    bossBG = null;                                    //Backgrounds for Screens 4, 5, 6, 7 & 8

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    instructions = null;
    Story = null;
    wordBank = null;
  }

  if(Screen == 3)
  {
    logo = null;
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)

    levelChooserBG = null;                            //Backgrounds for Screens 4, 5, 6, 7 & 8
    tutorialBG = null;                                //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    bossBG = null;                                    //Backgrounds for Screens 4, 5, 6, 7 & 8

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    instructions = null;
    Story = null;
    wordBank = null;
  }

  if(Screen == 4)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    StoryA = null;                                   //Images for screen 3(Main Menu)
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)


    tutorialBG = null;                                //Backgrounds for Screens 5
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 6
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 7
    bossBG = null;                                    //Backgrounds for Screens 8

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    instructions = null;
    Story = null;
    wordBank = null;
  }

  if(Screen == 5)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    StoryA = null;                                   //Images for screen 3(Main Menu)
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)

    levelChooserBG = null;                            //Backgrounds for Screens 4
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 6
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 7
    bossBG = null;                                    //Backgrounds for Screens 8

    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    Story = null;
    wordBank = null;
  }

  if(Screen == 6)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    StoryA = null;                                   //Images for screen 3(Main Menu)
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)


    levelChooserBG = null;                            //Backgrounds for Screens 4
    tutorialBG = null;                                //Backgrounds for Screens 5
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 7
    bossBG = null;                                    //Backgrounds for Screens 8

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    instructions = null;
    Story = null;
    wordBank = null;
  }

  if(Screen == 7)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    StoryA = null;                                   //Images for screen 3(Main Menu)
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)

    levelChooserBG = null;                            //Backgrounds for Screens 4
    tutorialBG = null;                                //Backgrounds for Screens 5
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 6
    bossBG = null;                                    //Backgrounds for Screens 8

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    instructions = null;
    Story = null;
  }

  if(Screen == 8)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    StoryA = null;                                   //Images for screen 3(Main Menu)
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)


    levelChooserBG = null;                            //Backgrounds for Screens 4
    tutorialBG = null;                                //Backgrounds for Screens 5
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 6
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 7

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    instructions = null;
    Story = null;
  }

  if(Screen == 9)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)
    Crew = null;                                     //Images for Screen 10(credits)
    CrewLogo = null;                                 //Images for Screen 10(credits)

    levelChooserBG = null;                            //Backgrounds for Screens 4, 5, 6, 7 & 8
    tutorialBG = null;                                //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    bossBG = null;                                    //Backgrounds for Screens 4, 5, 6, 7 & 8

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    instructions = null;
    wordBank = null;
  }

  if(Screen == 10)
  {
    menuBackground = null;                           //Background Image for Screen 3 (Main Menu), A & B are rollover and disabled.
    StoryA = null;                                   //Images for screen 3(Main Menu)
    CreditsA = null;                                 //Images for screen 3(Main Menu)
    ChooserA = null;                                 //Images for screen 3(Main Menu)
    menuBackgroundB = null;                          //Rollover images for screen 3(Main Menu)
    StoryB = null;                                   //Rollover images for screen 3(Main Menu)
    CreditsB = null;                                 //Rollover images for screen 3(Main Menu)
    ChooserB = null;                                 //Rollover images for screen 3(Main Menu)

    levelChooserBG = null;                            //Backgrounds for Screens 4, 5, 6, 7 & 8
    tutorialBG = null;                                //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG1 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    zombieMinionAttackBG2 = null;                     //Backgrounds for Screens 4, 5, 6, 7 & 8
    bossBG = null;                                    //Backgrounds for Screens 4, 5, 6, 7 & 8

    sampleZombie = null;                              //Enemy--Tutorial Zombie on Screen 5
    zombie1 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie2 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie3 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie4 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie5 = null;                                   //Enemy (Minion) On Screen 6 (Level 1)
    zombie6 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie7 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie8 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie9 = null;                                   //Enemy (Minion) On Screen 7 (Level 2)
    zombie10 = null;                                  //Enemy (Minion) On Screen 7 (Level 2)
    bossLeftArm = null;                               //Enemy (Boss) On Screen 8
    bossRightArm = null;                              //Enemy (Boss) On Screen 8
    bossLeftLeg = null;                               //Enemy (Boss) On Screen 8
    bossRightLeg = null;                              //Enemy (Boss) On Screen 8
    bossChest = null;                                 //Enemy (Boss) On Screen 8
    bossHead = null;                                  //Enemy (Boss) On Screen 8
    instructions = null;
    Story = null;
    wordBank = null;
  }
}

void Cheat()
{
  if(inCheatMode)
  {
    if(keyPressed)
    {
      if(key == '0') tutorialCleared = true;
      if(key == '1') stage1Cleared = true;
      if(key == '2') stage2Cleared = true;
      if(key == '3')
      {
        int addScore = int(random(9999));
        score += addScore;
      }
      if(key == '$') 
      {
        zombieMoveOn = false;
      }
      if(key == '%')
      {
        zombieMoveOn = true;
      }
    }
  } 
}
