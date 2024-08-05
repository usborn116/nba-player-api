module NBAPlayerAPI
  HEADERS = [
    "PERSON_ID", "PLAYER_LAST_NAME", "PLAYER_FIRST_NAME", "PLAYER_SLUG", 
    "TEAM_ID", "TEAM_SLUG", "IS_DEFUNCT", "TEAM_CITY", 
    "TEAM_NAME", "TEAM_ABBREVIATION", "JERSEY_NUMBER", "POSITION", 
    "HEIGHT", "WEIGHT", "COLLEGE", "COUNTRY", 
    "DRAFT_YEAR", "DRAFT_ROUND", "DRAFT_NUMBER", "ROSTER_STATUS", 
    "FROM_YEAR", "TO_YEAR", "PTS", "REB", "AST", "STATS_TIMEFRAME"
  ]

  STAT_HEADERS = {
    "Host"=>"stats.nba.com",
    "User-Agent"=>"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0",
    "Accept"=>"application/json, text/plain, */*",
    "Accept-Language"=>"en-US,en;q=0.5",
    "Accept-Encoding"=>"utf-8",
    "x-nba-stats-origin"=>"stats",
    "x-nba-stats-token"=>"true",
    "Connection"=>"keep-alive",
    "Referer"=>"https://stats.nba.com/",
    "Pragma"=>"no-cache",
    "Cache-Control"=>"no-cache"
  }
end