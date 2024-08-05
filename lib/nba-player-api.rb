require 'Faraday'
require_relative 'nba_player_api/player'
require_relative 'nba_player_api/constants'

module NBAPlayerAPI
  def get_player_data(year = "#{Time.now.year - 1}-#{Time.now.strftime('%y')}")

    nba_url = "https://stats.nba.com/stats/playerindex?Active=&LeagueID=00&Season=#{year}&TeamID=0"

    conn = Faraday.new(
        url: nba_url, 
        headers: NBAPlayerAPI::STAT_HEADERS
    )
    response = conn.get()
    data = JSON.parse(response.body)    
    players = data['resultSets'][0]['rowSet'].map do |player|
      NBAPlayerAPI::Player.new(player)
    end

    players
  end

  module_function :get_player_data
end
