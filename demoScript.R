library(StatsBombR)

StatsBombData <- free_allevents()
Comp <- FreeCompetitions()

matches <- FreeMatches(Comp)
wsl <- matches[matches$competition.competition_id == 37 & matches$season.season_id == 90 & matches$home_team.home_team_name == "West Ham United LFC", ]

events = get.matchFree(wsl[1,])

