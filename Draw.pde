void draw()
{
  if(Screen == 1)
  {
    if(previousScreen != Screen)
    {
      unloadImages();

      //**********Stuff for Screen 1 (Logo Screen)**********\\
      logo = loadImage("Images/Screen1/logokrizzal.gif");
      //**********Stuff for Screen 1 (Logo Screen)**********\\

      previousScreen = Screen;
    }

    background(0);
    logo.resize(width, height);
    image(logo, -100, -100);
    float now = millis();
    int timeElapsed = (int)(now/1000);
    //println(timeElapsed);
    if(timeElapsed == 5 || (mousePressed && mouseY < 100))
    {
      Screen = 3;
    }
  }

  if(Screen == 3)          //*****Main Menu*****\\
  {
    if(previousScreen != Screen)
    {
      unloadImages();

      //**********Stuff for Screen 3 (Main Menu Screen)**********\\
      menuBackground = loadImage("Images/Screen3/bg.jpg");
      StoryA = loadImage("Images/Screen3/story.gif");
      StoryA.resize(150, 39);
      CreditsA = loadImage("Images/Screen3/credits.gif");
      CreditsA.resize(150, 39);
      ChooserA = loadImage("Images/Screen3/choosechar.gif");
      ChooserA.resize(150, 39);
      StoryB = loadImage("Images/Screen3/story.png");
      StoryB.resize(150, 39);
      CreditsB = loadImage("Images/Screen3/credits.png");
      CreditsB.resize(150, 39);
      ChooserB = loadImage("Images/Screen3/choosechar.png");
      ChooserB.resize(150, 39);

      chosen = loadFont("ParryHotter-40.vlw");

      Story = loadImage("Images/Screen9/story.gif");
      Story.resize(500, 375);

      Crew = loadImage("Images/Screen10/crew.png");
      Crew.resize(400, 200); 
      CrewLogo = loadImage("Images/Screen10/crewlogo.png");
      CrewLogo.resize(400, 171);
      //**********Stuff for Screen 3 (Main Menu Screen)**********\\

      previousScreen = Screen;
    }
    
    textInputEnabled = false;
    fill(0);
    image(menuBackground, 0, 0);
    noTint();
    textFont(chosen);

    if(mouseX > 25 && mouseX < 175 && mouseY > 500 && mouseY < 539)
    {
      menuBackground = loadImage("Images/Screen3/bgstart.jpg");
      image(BeginGameB, 25, 500);
      tint(125, 100);
      if(mousePressed)
      {
        Screen = 4;     //Game Screen (Level Chooser)
      }
    } 
    else if(mouseX > 225 && mouseX < 375 && mouseY > 500 && mouseY < 539)
    {
      menuBackground = loadImage("Images/Screen3/bgstory.jpg");
      image(StoryB, 225, 500);
      image(Story, 150, 50);
      tint(125, 100);
    } 
    else if(mouseX > 425 && mouseX < 575 && mouseY > 500 && mouseY < 539)
    {
      menuBackground = loadImage("Images/Screen3/bgcredits.jpg");
      image(CreditsB, 425, 500);
      image(Crew, 200, 230);
      image(CrewLogo, 200, 50);
      tint(125, 100);
    } 
    else {
      menuBackground = loadImage("Images/Screen3/bg.jpg");
      image(BeginGameA, 25, 500);
      image(StoryA, 225, 500);
      image(CreditsA, 425, 500);
    }
  }

  if(Screen == 4)     //*****Game Screen----------Level Chooser
  {
    if(previousScreen != Screen)
    {
      unloadImages();

      //**********Stuff for Screen 4 (Level Chooser Screen)**********\\
      //levelChooserBG = loadImage("Images/Screen4/background.jpg");
      levelChooserBG = loadImage("Images/Screen4/background.png");
      levelChooserBG.resize(800, 575);

      input = loadFont("Apple-Chancery-18.vlw");

      //**********Stuff for Screen 4 (Level Chooser Screen)**********\\
      noTint();
      previousScreen = Screen;
    }

    textInputEnabled = false;
    topBar();
    image(levelChooserBG, 0, 25);
    if(gameStartBackgroundSet == true)
    {
      background(0);
      gameStartBackgroundSet = false;
    }

    if(mouseX > 350 && mouseX < 450 && mouseY > 0 && mouseY < 26)
    {
      image(mainMenuB, 350, -1);
    } 
    else {
      image(mainMenuA, 350, -1);
    }
    if(mousePressed && mouseX > 350 && mouseX < 450 && mouseY > 0 && mouseY < 26)
    {
      Screen = 3;
    }

    fill(0);
    textSize(15);
    if(tutorialCleared == false && stage1Cleared == false && stage2Cleared == false)
    {
      text("LOCKED", 115, 530);                    //Boss Door
      text("LOCKED", 415, 500);                    //Stage 1
      text("LOCKED", 565, 505);                    //Stage 2
    }
    if(tutorialCleared == true && stage1Cleared == false && stage2Cleared == false)
    {
      text("LOCKED", 115, 530);                    //Boss Door
      text("LOCKED", 565, 505);                    //Stage 2
    }
    if(tutorialCleared == true && stage1Cleared == true && stage2Cleared == false)
    {
      text("Cleared", 415, 500);                    //Stage 1
      text("LOCKED", 115, 530);                    //Boss Door
    }
    if(tutorialCleared == true && stage1Cleared == true && stage2Cleared == true)
    {
      text("Cleared", 415, 500);                   //Stage 1
      text("Cleared", 565, 505);                   //Stage 2
      text("Fight Boss", 115, 530);                //Boss Door
    }

    if(mousePressed && mouseX > 220 && mouseX < 300 && mouseY > 460 && mouseY < 585)     //Works with background.png..........Tutorial Level
    {
      Screen = 5;
      tutorialZombieAlive = true;
      tutorialAnswer = false;
    }
    if(tutorialCleared && mousePressed && mouseX > 410 && mouseX < 480 && mouseY > 460 && mouseY < 580)     //Works with background.png..........Level 1
    {
      Screen = 6;
      answer = "";
      zombie1to5Y = 30;
      mathQuestion1 = int(random(1, 6));            //random int to choose the zombies for Level 1
      mathQuestion2 = int(random(6, 11));           //random int to choose the zombies for Level 1
      mathQuestion3 = int(random(11, 16));          //random int to choose the zombies for Level 1
      mathQuestion4 = int(random(16, 21));          //random int to choose the zombies for Level 1
      mathQuestion5 = int(random(21, 26));
      zombie1 = loadImage("Images/Screen6/zombiemath"+mathQuestion1+".gif");
      zombie2 = loadImage("Images/Screen6/zombiemath"+mathQuestion2+".gif");
      zombie3 = loadImage("Images/Screen6/zombiemath"+mathQuestion3+".gif");
      zombie4 = loadImage("Images/Screen6/zombiemath"+mathQuestion4+".gif");
      zombie5 = loadImage("Images/Screen6/zombiemath"+mathQuestion5+".gif");
      zombie1alive = true;
      zombie2alive = true;
      zombie3alive = true;
      zombie4alive = true;
      zombie5alive = true;
    }
    if(stage1Cleared && mousePressed && mouseX > 565 && mouseX < 645 && mouseY > 460 && mouseY < 575)     //Works with background.jpg(ign.com image)..........Level 2
    {
      Screen = 7;
      answer = "";
      zombie6to10Y = 30;
      englishQuestion1 = int(random(1, 4));         //random int to choose the zombies for Level 2
      englishQuestion2 = int(random(4, 7));        //random int to choose the zombies for Level 2
      englishQuestion3 = int(random(7, 11));       //random int to choose the zombies for Level 2
      englishQuestion4 = int(random(11, 15));       //random int to choose the zombies for Level 2
      englishQuestion5 = int(random(15, 19));       //random int to choose the zombies for Level 2
      zombie6 = loadImage("Images/Screen7/zombieenglish"+englishQuestion1+".gif");
      zombie7 = loadImage("Images/Screen7/zombieenglish"+englishQuestion2+".gif");
      zombie8 = loadImage("Images/Screen7/zombieenglish"+englishQuestion3+".gif");
      zombie9 = loadImage("Images/Screen7/zombieenglish"+englishQuestion4+".gif");
      zombie10 = loadImage("Images/Screen7/zombieenglish"+englishQuestion5+".gif");
      zombie6alive = true;
      zombie7alive = true;
      zombie8alive = true;
      zombie9alive = true;
      zombie10alive = true;
    }
    if(stage2Cleared && mousePressed && mouseX > 110 && mouseX < 180 && mouseY > 495 && mouseY < 585)     //Works with background.png..........Boss Level
    {
      Screen = 8;
      answer = "";
      zombie1to5Y = 30;
      leftArmQuestion = int(random(1, 4));       //random int to choose the left arm for BOSS Level
      rightArmQuestion = int(random(1, 4));      //random int to choose the right arm for BOSS Level
      leftLegQuestion = int(random(1, 4));       //random int to choose the left leg for BOSS Level
      rightLegQuestion = int(random(1, 4));      //random int to choose the right leg for BOSS Level
      chestQuestion = int(random(1, 4));         //random int to choose the chest for BOSS Level
      bossLeftArm = loadImage("Images/Screen8/leftArm"+leftArmQuestion+".gif");
      bossLeftArm.resize(325, 550);
      bossRightArm = loadImage("Images/Screen8/rightArm"+rightArmQuestion+".gif");
      bossRightArm.resize(325, 550);
      bossLeftLeg = loadImage("Images/Screen8/leftLeg"+leftLegQuestion+".gif");
      bossLeftLeg.resize(325, 550);
      bossRightLeg = loadImage("Images/Screen8/rightLeg"+rightLegQuestion+".gif");
      bossRightLeg.resize(325, 550);
      bossChest = loadImage("Images/Screen8/chest"+chestQuestion+".gif");
      bossChest.resize(325, 550);
    }
  }

  if(Screen == 5)     //*****Game Screen----------Tutorial Level
  {
    if(previousScreen != Screen)
    {
      unloadImages();

      //**************Stuff for Screen 5 (Tutorial Screens)**************\\
      //*****Images
      tutorialBG = loadImage("Images/Screen5/background.png");   //Background Image for Screen 5 (Tutorial)
      tutorialBG.resize(800, 575);
      sampleZombie = loadImage("Images/Screen5/zombie.png");
      instructions = loadImage("Images/Screen5/instruct.jpg");
      //**************Stuff for Screen 5 (Tutorial Screens)**************\\

      previousScreen = Screen;
    }
    if(tutorialFirstRun)
    {
      image(instructions, 0, 0);
      textFont(input);
      fill(255);
      text("Click here to try", 600, 550);

      if(mousePressed && mouseX > 599 && mouseX < 721 && mouseY > 529 && mouseY < 561)
      {
        moveToToutorialPlay = 1;
      }
    }
    if(moveToToutorialPlay == 1)
    {
      image(tutorialBG, 0, 25);
      textBox();
      topBar();
      wand();
      textFont(input);
      fill(0);
      text(answer, cur, textY);
      if(tutorialZombieAlive)
      {
        textInputEnabled = true;
        image(sampleZombie, 25, 50);
        textFont(input);
      }

      if(tutorialAnswer == true && mouseX > 25 && mouseX < 175)
      {
        cursorOnZombie = true;
        wand();
        if(mousePressed)
        {
          fill(255);
          ellipse(115, 150, 10, 10);
          tutorialZombieAlive = false;
          zombieJustKilled = true;
        }
      } else cursorOnZombie = false;
      if(tutorialZombieAlive == false)
      {
        textFont(input);
        fill(255);
        text("Great! You have cleared the tutorial. Now please advance to Level 1", 50, 100);
        fill(0);
        rect(115, 180, 35, 25);
        fill(255);
        text("Click here to Continue", 75, 200);
        if(mousePressed && mouseX > 115 && mouseX < 150 && mouseY > 180 && mouseY < 205)
        {
          Screen = 4;
          tutorialFirstRun = false;
        }  
        tutorialCleared = true;
      }
      if(zombieJustKilled == true)
      {
        score += 10;
        tutorialAnswer = false;
        zombieJustKilled = false;
        textInputEnabled = false;
      }

      if(mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
      {
        image(mainMenuB, 700, -1);
      } 
      else {
        image(mainMenuA, 700, -1);
      }
      if(mousePressed && mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
      {
        Screen = 4;
      }
    }
  }

  if(Screen == 6)     //*****Game Screen----------Minoin Level 1..........Math
  {
    if(previousScreen != Screen)
    {
      unloadImages();

      //**********Stuff for Screen 6 (Level 1 Screen)**********\\
      //*****Images
      zombieMinionAttackBG1 = loadImage("Images/Screen6/bg.jpg");               //Background Image for Screen 6 (Level 1)
      zombieMinionAttackBG1.resize(800, 575);
      stageClear = loadImage("Images/Screen6/stageclear.png");
      //**********Stuff for Screen 6 (Level 1 Screen)**********\\

      noTint();
      previousScreen = Screen;
    }

    image(zombieMinionAttackBG1, 0, 25);
    textBox();
    topBar();
    textFont(input);
    fill(0);
    text(answer, cur, textY);

    if(zombie1alive)
    {
      textInputEnabled = true;
      image(zombie1, 5, zombie1to5Y+5, random(150,160), random(235,245));
    }
    if(zombie2alive)
    {
      textInputEnabled = true;
      image(zombie2, 165, zombie1to5Y+20, 150,random(215,230));
    }
    if(zombie3alive)
    {
      textInputEnabled = true;
      image(zombie3, 325, zombie1to5Y, random(145,150), random(225,235));
    }
    if(zombie4alive)
    {
      textInputEnabled = true;
      image(zombie4, 485, zombie1to5Y+15, random(150,155), 235);
    }
    if(zombie5alive)
    {
      textInputEnabled = true;
      image(zombie5, 645, zombie1to5Y+10, random(150,155), random(235,240));
    }
    if(zombieMoveOn)
    {
      zombie1to5Y += 0.1;
    }
    if(answer1IsCorrect == true && mouseX > 5 && mouseX < 155)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie1alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(answer2IsCorrect == true && mouseX > 165 && mouseX < 315)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie2alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(answer3IsCorrect == true && mouseX > 325 && mouseX < 475)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie3alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(answer4IsCorrect == true && mouseX > 485 && mouseX < 635)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie4alive = false;
        zombieJustKilled = true;
      }
    }  else cursorOnZombie = false;
    if(answer5IsCorrect == true && mouseX > 645 && mouseX < 795)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie5alive = false;
        zombieJustKilled = true;
      }
    }  else cursorOnZombie = false;
    if(zombieJustKilled)
    {
      score += 10;
      zombieJustKilled = false;
      answer1IsCorrect = false;
      answer2IsCorrect = false;
      answer3IsCorrect = false;
      answer4IsCorrect = false;
      answer5IsCorrect = false;
    }
    if(zombie1alive == false && zombie2alive == false && zombie3alive == false && zombie4alive == false && zombie5alive == false)
    {
      textInputEnabled = false;
      stage1Cleared = true;
      image(stageClear, 63, 100);
      if(mousePressed && mouseX > 165 && mouseX < 240 && mouseY > 210 && mouseY < 250)
      {
        Screen = 4;
      }
    }
    if(mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
    {
      image(mainMenuB, 700, -1);
    } 
    else {
      image(mainMenuA, 700, -1);
    }
    if(mousePressed && mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
    {
      Screen = 4;
    }
    if(zombie1to5Y + 235 >= 600)
    {
      Screen = 12;
    }
    wand();
  }

  if(Screen == 7)     //*****Game Screen----------Minoin Level 2..........English
  {
    if(previousScreen != Screen)
    {
      unloadImages();

      //**********Stuff for Screen 7 (Level 2 Screen)**********\\
      //*****Images
      zombieMinionAttackBG2 = loadImage("Images/Screen7/bg.jpg");               //Background Image for Screen 7 (Level 2)
      zombieMinionAttackBG2.resize(800, 575);
      wordBank = loadImage("Images/Screen7/bankenglish.png");
      stageClear = loadImage("Images/Screen7/stageclear.png");
      //**********Stuff for Screen 7 (Level 2 Screen)**********\\

      noTint();
      previousScreen = Screen;
    }

    image(zombieMinionAttackBG2, 0, 25);
    textBox();
    topBar();
    image(wordBank, 5, 495);
    textFont(input);
    fill(0);
    text(answer, cur, textY);

    if(zombie6alive)
    {
      textInputEnabled = true;
      image(zombie6, 5, zombie6to10Y + 5, random(150,165), random(235,250));
    }
    if(zombie7alive)
    {
      textInputEnabled = true;
      image(zombie7, 165, zombie6to10Y + 20, 150, random(215,230));
    }
    if(zombie8alive)
    {
      textInputEnabled = true;
      image(zombie8, 325, zombie6to10Y, random(145,155), random(225,240));
    }
    if(zombie9alive)
    {
      textInputEnabled = true;
      image(zombie9, 485, zombie6to10Y + 15, random(145,155), 235);
    }
    if(zombie10alive)
    {
      textInputEnabled = true;
      image(zombie10, 645, zombie6to10Y + 10, random(145,155), random(235,245));
    }
    if(zombieMoveOn)
    {
      zombie6to10Y += 0.2;
    }
    if(answer6IsCorrect == true && mouseX > 5 && mouseX < 155)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie6alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(answer7IsCorrect == true && mouseX > 165 && mouseX < 315)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie7alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(answer8IsCorrect == true && mouseX > 325 && mouseX < 475)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie8alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(answer9IsCorrect == true && mouseX > 485 && mouseX < 635)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie9alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(answer10IsCorrect == true && mouseX > 645 && mouseX < 795)
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        zombie10alive = false;
        zombieJustKilled = true;
      }
    } else cursorOnZombie = false;
    if(zombieJustKilled)
    {
      score += 20;
      zombieJustKilled = false;
      answer6IsCorrect = false;
      answer7IsCorrect = false;
      answer8IsCorrect = false;
      answer9IsCorrect = false;
      answer10IsCorrect = false;
    }
    if(zombie6alive == false && zombie7alive == false && zombie8alive == false && zombie9alive == false && zombie10alive == false)
    {
      textInputEnabled = false;
      stage2Cleared = true;
      image(stageClear, 63, 100);
      if(mousePressed && mouseX > 165 && mouseX < 240 && mouseY > 210 && mouseY < 250)
      {
        Screen = 4;
      }
    }
    if(mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
    {
      image(mainMenuB, 700, -1);
    } 
    else {
      image(mainMenuA, 700, -1);
    }
    if(mousePressed && mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
    {
      Screen = 4;
    }
    if(zombie6to10Y + 235 >= 600)
    {
      Screen = 12;
    }
    wand();
  }

  if(Screen == 8)     //*****Game Screen----------Boss Level..........Human Body
  {
    if(previousScreen != Screen)
    {
      unloadImages();

      //**********Stuff for Screen 8 (Boss Level Screen)**********\\
      //*****Images
      bossBG = loadImage("Images/Screen8/background.jpg");   //Background Image for Screen 8 (Boss Level)
      bossBG.resize(800, 575);
      bossHead = loadImage("Images/Screen8/head.gif");
      bossHead.resize(325, 550);
      wordBank = loadImage("Images/Screen8/bankscience.png");
      //**********Stuff for Screen 8 (Boss Level Screen)**********\\

      noTint();
      previousScreen = Screen;
    }

    image(bossBG, 0, 25);
    textBox();
    topBar();
    image(wordBank, 5, 495);
    textFont(input);
    fill(0);
    text(answer, cur, textY);

    if(Head)
    {
      image(bossHead, 250, 25);
    }
    if(LeftArm)
    {
      textInputEnabled = true;
      image(bossLeftArm, 250, 25);                                                                //Fill out X & Y co-ordinates for images
    }
    if(RightArm)
    {
      textInputEnabled = true;
      image(bossRightArm, 250, 25);                                                               //Fill out X & Y co-ordinates for images
    }
    if(LeftLeg)
    {
      textInputEnabled = true;
      image(bossLeftLeg, 250, 25);                                                               //Fill out X & Y co-ordinates for images
    }
    if(RightLeg)
    {
      textInputEnabled = true;
      image(bossRightLeg, 250, 25);                                                              //Fill out X & Y co-ordinates for images
    }
    if(Chest)
    {
      textInputEnabled = true;
      image(bossChest, 250, 25);                                                                  //Fill out X & Y co-ordinates for images
    }

    if(bossAnswer1IsCorrect == true && mousePressed && mouseX > 250 && mouseX < 310 && mouseY > 165 && mouseY < 350)                    //Fill out moueX & moueY
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        LeftArm = false;
        zombieJustKilled = true;
      }
    }
    if(bossAnswer2IsCorrect == true && mousePressed && mouseX > 425 && mouseX < 570 && mouseY > 165 && mouseY < 290)                    //Fill out moueX & moueY
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        RightArm = false;
        zombieJustKilled = true;
      }
    }
    if(bossAnswer3IsCorrect == true && mousePressed && mouseX > 290 && mouseX < 340 && mouseY > 330 && mouseY < 560)                    //Fill out moueX & moueY
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        LeftLeg = false;
        zombieJustKilled = true;
      }
    }
    if(bossAnswer4IsCorrect == true && mousePressed && mouseX > 375 && mouseX < 440 && mouseY > 330 && mouseY < 560)                    //Fill out moueX & moueY
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        RightLeg = false;
        zombieJustKilled = true;
      }
    }
    if(bossAnswer5IsCorrect == true && mouseX > 320 && mouseX < 410 && mouseY > 175 && mouseY < 275)                    //Fill out moueX & moueY
    {
      cursorOnZombie = true;
      wand();
      if(mousePressed)
      {
        fill(255);
        ellipse(mouseX, mouseY, 10, 10);
        Chest = false;
        zombieJustKilled = true;
      }
    }

    if(zombieJustKilled)
    {
      score += 50;
      zombieJustKilled = false;
      bossAnswer1IsCorrect = false;
      bossAnswer2IsCorrect = false;
      bossAnswer3IsCorrect = false;
      bossAnswer4IsCorrect = false;
      bossAnswer5IsCorrect = false;
    }

    if(LeftArm == false && RightArm == false && LeftLeg == false && RightLeg == false && Chest == false)
    {
      bossKilled = true;
      Head = false;
      Screen = 11;
    }
    if(mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
    {
      image(mainMenuB, 700, -1);
    } 
    else {
      image(mainMenuA, 700, -1);
    }
    if(mousePressed && mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 26)
    {
      Screen = 4;
    }
    wand();
  }
  if(Screen == 11)
  {
    noTint();
    background(0);
    textFont(scoreBar);
    text("You Win!!!", 300, 250);
  }
  if(Screen == 12)
  {
    noTint();
    background(0);
    textFont(scoreBar);
    text("You Lose!!!", 300, 250);
  }
  Cheat();
}

