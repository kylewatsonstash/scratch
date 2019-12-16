# Make a Ruby class called TeamPicker that gets initialized with a 
# full array of player names and that has a method called "random_five"
# that will randomly return 5 *unique* names from the full array of player names.

# Interesting extra credit: print a warning message if someone 
# calls the "random_five" method and the full list of players is LESS than 5

class TeamPicker
    def initialize
      @all_players = all_players
    end
    def all_players
        [
          "Larry",
          "Barry",
          "Cary",
          "Gerry",
          "Bob",
          "Terry",
          "Gary",
          "Harry",
          "Mary",
          "Joe"
        ]
    end

    def random_five
      team = []
        if (all_players.size < 5); puts "gimme mo playas"
          elsif
            while (team.size < 5) do
              one_player = all_players.sample
            if !team.include?(one_player)
              team << one_player
            end
          end
        end
      puts team
    end

    # def random_five
    #   team = []
    #         while (team.size < 5) 
    #           one_player = all_players.sample
    #         if !team.include?(one_player)
    #           team << one_player
    #         end
    #       end
    #   puts team
    # end

end
TeamPicker.new.random_five


