void keyTyped()
{
  if(cheatAllowed)
  {
    if(key == '(' && inCheatMode == false)
    {
      cheat = 1;
    }
    if(key == '*' && cheat == 1 && inCheatMode == false)
    {
      cheat = 2;
    }
    if(key == ')' && cheat == 2 && inCheatMode == false)
    {
      inCheatMode = true;
    }
    if(inCheatMode && (key == '~' || key == '!' /*|| key == '@' || key == '#' || key == '%' || key == '^' || key == '&' || key == '_'*/))
    {
      inCheatMode = false;
      cheat = 0;
    }
  }
    
  if((Screen == 5 || Screen == 6 || Screen == 7 || Screen == 8) && textInputEnabled)
  {
    if(key == DELETE || key == BACKSPACE)
    {
      textBox();
      answer = "";
    }
    if(key == ENTER || key == RETURN)
    {
      answerCheck();
    }
    fill(0);
    textFont(input);
    if(cur > 770)
    {
      textInputEnabled = false;
      return;
    }
    if(key == ' ')
    {
      cur += textWidth("m");
      answer += " ";
    }
    if(key == 'a')
    {
      cur += textWidth(a);
      answer += "a";
    }
    if(key == 'b')
    {
      cur += textWidth(b);
      answer += "b";
    }
    if(key == 'c')
    {
      cur += textWidth(c);
      answer += "c";
    }
    if(key == 'd')
    {
      cur += textWidth(d);
      answer += "d";
    }
    if(key == 'e')
    {
      cur += textWidth(e);
      answer += "e";
    }
    if(key == 'f')
    {
      cur += textWidth(f);
      answer += "f";
    }
    if(key == 'g')
    {
      cur += textWidth(g);
      answer += "g";
    }
    if(key == 'h')
    {
      cur += textWidth(h);
      answer += "h";
    }
    if(key == 'i')
    {
      cur += textWidth(i);
      answer += "i";
    }
    if(key == 'j')
    {
      cur += textWidth(j);
      answer += "j";
    }
    if(key == 'k')
    {
      cur += textWidth(k);
      answer += "k";
    }
    if(key == 'l')
    {
      cur += textWidth(l);
      answer += "l";
    }
    if(key == 'm')
    {
      cur += textWidth(m);
      answer += "m";
    }
    if(key == 'n')
    {
      cur += textWidth(n);
      answer += "n";
    }
    if(key == 'o')
    {
      cur += textWidth(o);
      answer += "o";
    }
    if(key == 'p')
    {
      cur += textWidth(p);
      answer += "p";
    }
    if(key == 'q')
    {
      cur += textWidth(q);
      answer += "q";
    }
    if(key == 'r')
    {
      cur += textWidth(r);
      answer += "r";
    }
    if(key == 's')
    {
      cur += textWidth(s);
      answer += "s";
    }
    if(key == 't')
    {
      cur += textWidth(t);
      answer += "t";
    }
    if(key == 'u')
    {
      cur += textWidth(u);
      answer += "u";
    }
    if(key == 'v')
    {
      cur += textWidth(v);
      answer += "v";
    }
    if(key == 'w')
    {
      cur += textWidth(w);
      answer += "w";
    }
    if(key == 'x')
    {
      cur += textWidth(x);
      answer += "x";
    }
    if(key == 'y')
    {
      cur += textWidth(y);
      answer += "y";
    }
    if(key == 'z')
    {
      cur += textWidth(z);
      answer += "z";
    }
    if(key == '1')
    {
      cur += textWidth("1");
      answer += "1";
    }
    if(key == '2')
    {
      cur += textWidth("2");
      answer += "2";
    }
    if(key == '3')
    {
      cur += textWidth("3");
      answer += "3";
    }
    if(key == '4')
    {
      cur += textWidth("4");
      answer += "4";
    }
    if(key == '5')
    {
      cur += textWidth("5");
      answer += "5";
    }
    if(key == '6')
    {
      cur += textWidth("6");
      answer += "6";
    }
    if(key == '7')
    {
      cur += textWidth("7");
      answer += "7";
    }
    if(key == '8')
    {
      cur += textWidth("8");
      answer += "8";
    }
    if(key == '9')
    {
      cur += textWidth("9");
      answer += "9";
    }
    if(key == '0')
    {
      cur += textWidth("0");
      answer += "0";
    }
    if(key == '/')
    {
      cur += textWidth("/");
      answer += "/";
    }
    if(key == '.')
    {
      cur += textWidth(".");
      answer += ".";
    }
  }
}
