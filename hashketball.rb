require "pry"
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => "Black, White",
      :players => {
          "Alan Anderson" => {
            :number => 0,
            :shoe => 16,
            :points => 22,
            :rebounds => 12,
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1
          },
          "Reggie Evans" => {
            :number => 30,
            :shoe => 14,
            :points => 12,
            :rebounds => 12,
            :assists => 12,
            :steals => 12,
            :blocks => 12,
            :slam_dunks => 7
          },
          "Brook Lopez" => {
            :number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15
          },
          "Mason Plumlee" => {
            :number => 1,
            :shoe => 19,
            :points => 26,
            :rebounds => 12,
            :assists => 6,
            :steals => 3,
            :blocks => 8,
            :slam_dunks => 5
          },
          "Jason Terry" => {
            :number => 31,
            :shoe => 15,
            :points => 19,
            :rebounds => 2,
            :assists => 2,
            :steals => 4,
            :blocks => 11,
            :slam_dunks => 1
          }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => "Turquoise, Purple",
      :players => {
          "Jeff Adrien" => {
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2
          },
          "Bismak Biyombo" => {
            :number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 7,
            :blocks => 15,
            :slam_dunks => 10
          },
          "DeSagna Diop" => {
            :number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5
          },
          "Ben Gordon" => {
            :number => 8,
            :shoe => 15,
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0
          },
          "Brendan Haywood" => {
            :number => 33,
            :shoe => 15,
            :points => 6,
            :rebounds => 12,
            :assists => 12,
            :steals => 22,
            :blocks => 5,
            :slam_dunks => 12
          }
    }
  }
}
end

def num_points_scored(name)
  game_hash.each do |location, details|
    if details[:players].include?(name)
      return details[:players][name][:points]
    end
  end
end

def shoe_size(name)
  game_hash.each do |location, details|
    if details[:players].include?(name)
      return details[:players][name][:shoe]
    end
  end
end

def team_colors(team)
  answer = []
  game_hash.each do |location, details|
    if details[:team_name] == team
      return answer.push(details[:colors]).join().delete(",").split()
    end
  end
end

def team_names
  answer = []
  game_hash.each do |location, details|
    answer.push(details[:team_name])
  end
  answer
end

def player_numbers(team)
  numbers = []
  game_hash.each do |location, details|
    if details[:team_name] == team
      details[:players].each do |name, stats|
        numbers.push(stats[:number])
    end
  end
end
numbers
end

def player_stats(name)
  game_hash.each do |location, details|
    if details[:players].include?(name)
      details.each do |player, stats|
        return details[:players][name]
    end
  end
end
end

def big_shoe_rebounds
  shoe_size = []
  game_hash.each do |location, details|
      details[:players].each do |name, stats|
        shoe_size.push(stats[:shoe])
    end
  end
  shoe_size.sort[-1]

  game_hash.each do |location, details|
    details[:players].each do |player, stats|
      if stats[:shoe] == shoe_size.sort[-1]
        return stats[:rebounds]
      end
    end
end
end

def most_points_scored
  points = []
  game_hash.each do |location, details|
      details[:players].each do |name, stats|
        points.push(stats[:points])
    end
  end
  points.sort[-1]

  game_hash.each do |location, details|
    details[:players].each do |player, stats|
      if stats[:points] == points.sort[-1]
        return player
      end
    end
end
end

most_points_scored

def winning_team

  game_hash.each do |location, details|
    details[:players].each do |name, stats|
      temp_score = 0
      temp_score += stats[:points]
    end
  end
end
