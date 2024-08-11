choice <- c("ROCK", "PAPER", "SCISSORS")

login <- function(){
  cat("WELCOME TO RPS GAME\n")
  name <- readline("TYPE YOUR NAME: ")
  round <- as.integer(readline("HOW MANY ROUNDS YOU WANT TO PLAY (1-100): "))
  return(list(name = name, round = round))
}

choose_choice <- function(){
  cat("GAME START, CHOOSE YOUR CHOICE:\n1. ROCK\n2. SCISSORS\n3. PAPER\n")
  user_choice <- as.integer(readline("TYPE 1, 2, OR 3 TO ANSWER: "))
  com_choice <- sample(1:3, 1)
  return(list(user_choice = user_choice, com_choice = com_choice))
}

compair_ans <- function(user_choice, com_choice, name){
  com_score <- 0
  user_score <- 0
  
  if(choice[user_choice] == choice[com_choice]){
    print("TIE, NO ONE WINS")
  }else if(choice[user_choice] == "ROCK" && choice[com_choice] == "SCISSORS"){
    cat(sprintf("%s IS THE BEST!\n", name))
    user_score <- user_score + 1
  }else if(choice[user_choice] == "SCISSORS" && choice[com_choice] == "PAPER"){
    cat(sprintf("%s IS THE BEST!\n", name))
    user_score <- user_score + 1
  }else if(choice[user_choice] == "PAPER" && choice[com_choice] == "ROCK"){
    cat(sprintf("%s IS THE BEST!\n", name))
    user_score <- user_score + 1
  }else{
    print("COMPUTER WILL RULE THE WORLD")
    com_score <- com_score + 1
  }
  return(list(com_score = com_score, user_score = user_score))
}

END_PART <- function(com_score, user_score, name){
  if(com_score > user_score){
    print("YOU LOST. DO YOU WANNA TRY AGAIN? HAHA, BUT YOU WILL STILL LOSE.")
  }else if(com_score < user_score){
    cat(sprintf("VERY GOOD, %s. YOU HAVE SAVED THE WORLD FROM BEING DOMINATED BY COMPUTER.\n", name))
  }else{
    print("IT'S A TIE!")
  }
}

gameplay <- function(){
  current_round <- 0
  com_score <- 0
  user_score <- 0
  
  login_info <- login()
  name <- login_info$name
  round <- login_info$round
  
  while(current_round < round){
    choices <- choose_choice()
    user_choice <- choices$user_choice
    com_choice <- choices$com_choice
    scores <- compair_ans(user_choice, com_choice, name)
    user_score <- user_score + scores$user_score
    com_score <- com_score + scores$com_score
    
    
    current_round <- current_round + 1
  }
  END_PART(com_score, user_score, name)
  ways <- as.integer(readline("TYPE 1 TO PLAY AGAIN: "))
  if(ways == 1){
    gameplay()
  }else{
    print("THANKS FOR PLAYING!")
  }
}

gameplay()
