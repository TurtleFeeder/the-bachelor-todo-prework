require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  winner_1st_name = nil

    data[season].each do |contestant| #{"name" => "Tessa Horst", "age" => "26",...}
      if contestant["status"] == "Winner"
        winner_1st_name = contestant["name"].split(' ')[0]
      end
    end
  winner_1st_name
end

def get_contestant_name(data, occupation)
  # code here
  name_by_occupation = nil

  data.each do |season, contestants_array| #|"season 19", [{...},{...},...]
    contestants_array.each do |contestant| #{"name" => "Ashley Iaconetti", "age" => "26",...}
      if contestant["occupation"] == occupation
        name_by_occupation = contestant["name"]
      end
    end
  end
  name_by_occupation
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestant_count = 0

  data.each do |season, contestants_array| #|"season 19", [{...},{...},...]
    contestants_array.each do |contestant| #{"name" => "Ashley Iaconetti", "age" => "26",...}
      if contestant["hometown"] == hometown
        contestant_count += 1
      end
    end
  end
  contestant_count
end

def get_occupation(data, hometown)
  # code here
  contestant_occupation = []
  data.each do |season, contestants_array| #|"season 19", [{...},{...},...]
    contestants_array.each do |contestant| #{"name" => "Ashley Iaconetti", "age" => "26",...}
      if contestant["hometown"] == hometown
        contestant_occupation << contestant["occupation"]
      end
    end
  end
  contestant_occupation[0]
end

def get_average_age_for_season(data, season)
  # code here
  season_ages = []

  data.each do |data_season, contestants_array| #|"season 19", [{...},{...},...]

    contestants_array.each do |contestant| #{"name" => "Ashley Iaconetti", "age" => "26",...}
      if  data_season == season
         season_ages << contestant["age"].to_f #.to_f converts it to floatnum
      end
    end
  end
  #the .reduce(:+) calculates the sum of the array
  #sum divide by array length = average. the .ceil rounds the floatnum to the nearest whole #
  avg_age = (season_ages.reduce(:+)/season_ages.length).round
end
