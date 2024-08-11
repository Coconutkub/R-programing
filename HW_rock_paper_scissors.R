choice = c("ROCK","PAPER","SCISSORS")
com_score = 0
user_score = 0

login = function(){
  cat("WELCOME TO RPS GAME\n")
  name = readline("TYPE YOUR NAME(NUT):")
  round = as.integer(readline("HOW MANY ROUND YOU WANT TO PLAY(1-100):"))
  return(list(name = name, round = round))
}

choose_choice = function(){
  cat("GAME START CHOOSE YOUR CHOICE\n1.ROCK\n2.SCISSORS\n3.PAPER\n")
  user_choice = as.integer(readline("TYPE 1,2,3 TO ANSWER:"))
  com_choice = sample(1:3,1)
  return(list(user_choice = user_choice, com_choice = com_choice))
}

compair_ans = function(user_choice, com_choice, name){
  if(choice[user_choice] == choice[com_choice]){
    cat(sprintf("\nTIES, NO ONE WINS"))
  } else if(choice[user_choice] == "ROCK" && choice[com_choice] == "SCISSORS"){
    cat(sprintf("\n%s IS THE BEST!", name))
    user_score <<- user_score + 1
  } else if(choice[user_choice] == "SCISSORS" && choice[com_choice] == "PAPER"){
    cat(sprintf("\n%s IS THE BEST!", name))
    user_score <<- user_score + 1
  } else if(choice[user_choice] == "PAPER" && choice[com_choice] == "ROCK"){
    cat(sprintf("\n%s IS THE BEST!", name))
    user_score <<- user_score + 1
  } else{
    cat(sprintf("\nCOMPUTER WILL RULE THE WORLD"))
    com_score <<- com_score + 1
  }
  return(list(com_score = com_score, user_score = user_score))
}

END_PART = function(com_score,user_score,name){
  if(com_score>user_score){
    print("YOU LOST,DO YOU WANNA TRY AGAIN? HAHA,BUT YOU WILL STILL LOSE.")
  }else if(com_score<user_score){
    print(sprintf("VERY GOOD, %s. YOU HAVE SAVED THE WORLD FROM BEING DOMINATED BY COMPUTER.",name))
  }else{
    print("เสมอไม่นับไอสั_")
  }
}

gameplay = function(){
  current_round = 0
  com_score <<- 0
  user_score <<- 0

  login_info = login()
  name = login_info$name
  round = login_info$round
  
  while(current_round < round){
    choice_info=choose_choice()
    score_info = compair_ans(choice_info$user_choice, choice_info$com_choice,name)
    com_score = score_info$com_score
    user_score = score_info$user_score
    current_round = current_round + 1
  }
  END_PART(com_score,user_score,name)
  ways = as.integer(readline("TYPE 1 TO PLAY AGAIN:"))
  if(ways == 1){
    gameplay()
  }else{
    print("THX TO PLAY")
  }
}

gameplay()
