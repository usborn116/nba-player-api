require_relative 'stat_card'
require_relative 'constants'

module NBAPlayerAPI
  class Player

    attr_reader :nba_id, :first_name, :last_name, :slug, 
                :current_team, :position, :active, :drafted_year,
                :stat_cards

    #basic initialization with attributes

    def initialize(player_data)
      @player_data_hash = create_player_data_hash(player_data)
      @nba_id = @player_data_hash['PERSON_ID']
      @first_name = @player_data_hash['PLAYER_FIRST_NAME']
      @last_name = @player_data_hash['PLAYER_LAST_NAME']
      @slug = @player_data_hash['PLAYER_SLUG']
      @current_team = @player_data_hash['TEAM_ABBREVIATION']
      @active = @player_data_hash['ROSTER_STATUS']
      @position = @player_data_hash['POSITION']
      @drafted_year = @player_data_hash['DRAFT_YEAR']
      @stat_cards = []
      @stat_cards << create_stat_card
    end

    def to_s 
      "Player: #{first_name} #{last_name} | Position: #{position} | Team: #{current_team}"
    end

    private

    def create_player_data_hash(array)
      result = {}
      array.length.times do |i|
        result[NBAPlayerAPI::HEADERS[i]] = array[i]
      end
      result
    end

    def create_stat_card
      return nil if @player_data_hash['STATS_TIMEFRAME'] != 'Season'
      stat_data = [
                    @player_data_hash['TO_YEAR'], 
                    @player_data_hash['PTS'], 
                    @player_data_hash['REB'], 
                    @player_data_hash['AST'], 
                  ]
      NBAPlayerAPI::StatCard.new(self, stat_data)
    end

  end
end