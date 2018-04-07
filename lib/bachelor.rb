require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    if person["status"] == "Winner"
      return person["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, people|
    people.each do |person|
      if person["occupation"] == occupation
         return person["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, people|
    people.each do |person|
      if person["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |seasons, people|
    people.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  avg = 0
  data[season].each do |person|
    avg += person["age"].to_f
    counter += 1
  end
  avg = avg / counter
  return avg.round
end
