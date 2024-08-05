module NBAPlayerAPI
  class StatCard

    attr_reader :player, :year, :points, :rebounds, :assists

    #basic initialization with attributes

    def initialize(player, stats)
      @player = player
      @year = stats[0].to_i
      @points = stats[1]
      @rebounds = stats[2]
      @assists = stats[3]
    end

    def to_s 
      "Player: #{player.to_s} | Year: #{year} | Points: #{points} | Rebounds: #{rebounds} | Assists: #{assists} " 
    end

  end
end