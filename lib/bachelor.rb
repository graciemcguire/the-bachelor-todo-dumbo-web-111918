def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    contestants.each do |k,v|
      if v == "Winner"
        full_name = contestants["name"]
        return full_name.split(' ').first
      end 
    end
  end
end



def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |k, v|
        if v == occupation
          return contestants["name"]
        end 
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |k, v|
        if v == hometown
          counter += 1 
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |k, v|
        if v == hometown
          return contestants["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0 
  count = 0 
  data[season].each do |contestants|
    contestants.each do |k, v|
      if k == "age"
        age += v.to_f 
        count += 1 
      end
    end 
  end 
  average = age / count
  return average.round
end

