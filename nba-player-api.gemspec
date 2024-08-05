Gem::Specification.new do |s|
  s.name        = "nba-player-api"
  s.version     = "0.0.0"
  s.summary     = "NBA player data"
  s.description = "Gets basic NBA player data from NBA.com"
  s.authors     = ["Usborn Ocampo"]
  s.email       = "usborn116@gmail.com"
  s.files       = 
    ["lib/nba-player-api.rb", "lib/nba_player_api/player.rb", "lib/nba_player_api/stat_card.rb", "lib/nba_player_api/constants.rb"]
  s.homepage    =
    "https://rubygems.org/gems/nba_player_api"
  s.license       = "MIT"
  s.add_development_dependency "rspec"
  s.add_development_dependency "faraday"
  s.add_runtime_dependency 'faraday'
  s.required_ruby_version = '>= 2.7.0'
end