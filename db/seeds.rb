# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = Team.create(name:'Free Agents')
Player.create([
  {name: 'Magic Johnson', nba_team: 'Los Angeles Lakers', position: 'PG', team: a},
  {name: 'Larry Bird', nba_team: 'Boston Celtics', position: 'SF', team: a},
  {name: 'Michael Jordan', nba_team: 'Chicago Bulls', position: 'SG', team: a},
  {name: 'Hakeem Olajuwan', nba_team: 'Houston Rockets', position: 'C', team: a},
  {name: 'Kareem Abdul-Jabbar', nba_team: 'Los Angeles Lakers', position: 'C', team: a},
  {name: 'Lebron James', nba_team: 'Miami Heat', position: 'SF', team: a},
  {name: 'Tim Duncan', nba_team: 'San Antonio Spurs', position: 'PF', team: a},
  {name: 'Chris Paul', nba_team: 'Los Angeles Clippers', position: 'PG', team: a},
  {name: 'Reggie Miller', nba_team: 'Indiana Pacers', position: 'SG', team: a},
  {name: 'Dennis Rodman', nba_team: 'Chicago Bulls', position: 'PF', team: a},
  ])