require_relative '../lib/nba_player_api.rb'

describe NBAPlayerAPI::Player do

  before do
    @players = NBAPlayerAPI.get_player_data
    @player = @players[0]
    @stat_card = @player.stat_cards[0]
  end

  describe "#initialize" do

    it "creates correct class" do
      expect(@player).to be_a NBAPlayerAPI::Player
    end

    it "has a name" do
      expect(@player.first_name).to match(/\w/)
      expect(@player.last_name).to match(/\w/)
      expect(@player.slug).to match(/\w*-\w*/)
    end

    it "has an id" do
      expect(@player.nba_id).to be_a Integer
    end

    it "has a team" do
      expect(@player.current_team).to be_a String
    end

    it "has active status" do
      expect(@player.active).to be_a Float
    end

    it "has a draft year" do
      expect(@player.drafted_year).to be_a Integer
    end

    it "has a position" do
      expect(@player.position).to be_a String
    end

  end

  describe "#create_stat_card" do

    it "has stat array" do
      expect(@player.stat_cards).to be_a Array
    end

    it "has correct stat card structure" do
      expect(@stat_card).to be_a NBAPlayerAPI::StatCard
      expect(@stat_card.year).to be_a Integer
      expect(@stat_card.points).to be_a Float
      expect(@stat_card.rebounds).to be_a Float
      expect(@stat_card.assists).to be_a Float
    end

  end

end