# this method will be what gets run at the bottom of this file to kick off the game
def start_game
  players = build_list_of_players
  team1 = select_players_for_gryffindor(players, [])
  team2 = select_players_for_slytherin(players, team1)
  puts "team1 is #{team1.join(", ")}"
  puts "team2 is #{team2.join(", ")}"
  puts
  team1_score = 0
  team2_score = 0
  scores = [ team1_score, team2_score ]
  puts "brooms up!!"
  60.times do
    sleep 0.01 
    determine_who_scored(team1, team2, scores)
    puts "another minute has gone by..."
  end
  finalize_game(scores)
end
# this method should return an array of 10 players
def build_list_of_players
  [
    "cliff",
    "anne",
    "harry",
    "sam",
    "devin",
    "ally",
    "bob",
    "jane",
    "jimmy",
    "dave"
  ]
end
# this method should select 5 random players from the array "full_list_of_players"
# (notice the method call includes an empty array! why?)
def select_players_for_gryffindor(full_list_of_players, already_used_players)
  players = []
  while(players.size < 5) do
    player = full_list_of_players[rand(full_list_of_players.size)]
    if !players.include?(player)
      players << player
    end
  end
  players
end
# this method should select 5 DIFFERENT players from the array "players"
# (e.g. it can't include any players that are already in gryffindor)
def select_players_for_slytherin(full_list_of_players, already_used_players)
  players = []
  while(players.size < 5) do
    player = full_list_of_players[rand(full_list_of_players.size)]
    if !already_used_players.include?(player) && !players.include?(player)
      players << player
    end
  end
  players
end
# this method should pick a random player from a random team, and print out who scored (and also increment the score by 10
def determine_who_scored(team1, team2, scores)
  if rand(2) == 1
    scores[0] += 10
    player = team1[rand(team1.size)]
    puts "#{player} from team 1 scored!"
  else
    scores[1] += 10
    player = team2[rand(team2.size)]
    puts "#{player} from team 2 scored!"
  end
end
# this method randomly pick either team1 or team2 to catch the snitch (and increase their score by 30)
# it also prints both the team1 and team2 scores, e.g "team 1 scored xxx points!", etc.
# lastly, it prints out who the winner is based on both final scores (the greater score wins)
def finalize_game(scores)
  if rand(2) == 1
    puts "team1 caught the snitch!"
    scores[0] += 30
  else
    puts "team2 caught the snitch!"
    scores[1] += 30
  end
  puts "team1 scored #{scores[0]}"
  puts "team2 scored #{scores[1]}"
  if scores[0] > scores[1]
    puts "team1 wins!"
  elsif scores[0] < scores[0]
    puts "team2 wins!"
  elsif scores[0] == scores[1]
    puts "OMFG a tie!"
  else
    puts "LJSFAJSKJFDLKFJaljdfjlasfdjklfjlaskfj"
  end
end
start_game