require "json"
require "date"
# your code
# 2 methods for conversion json <-> hash

def extract_datas_from_json(path)
  file = File.read(path)
  data_details = JSON.parse(file)
  return data_details
end


def write_output_as_json(output, path)
  File.open(path, 'wb') do |file|
    file.write(JSON.generate(output))
  end
end

# 1 method for calculate the price of a shift (depends of worker, status and day of the week)

def price_by_status(status)
  case status
    when "medic"
      return 270
    when "interne"
      return 126
    else
      return 0
  end
end

# 1 method for calculate, for each worker, the sum of prices for each shift-day
# wday = 0 for a sunday

def price_by_worker(status, shift_dates_list)
  compteur = 0
  shift_dates_list.each do |wday|
    if wday == 0 || wday == 6
      compteur += 2 * price_by_status(status)
    else
      compteur += price_by_status(status)
    end
  end
  compteur
end

# main program :

data_as_hash = extract_datas_from_json("level3/data.json")

workers_outputs = data_as_hash["workers"].map do |w|

  shift_list_dates_by_worker = []
  data_as_hash["shifts"].each { |sh| shift_list_dates_by_worker << Date.parse(sh["start_date"]).wday if sh["user_id"] == w["id"] }
  { "id" => w["id"],
    "price" => price_by_worker( w["status"], shift_list_dates_by_worker ) # somme du prix de chaque garde pour cet employé
  }

end


write_output_as_json({ "workers" => workers_outputs } ,"level3/output.json")

puts "output.json generated for #{data_as_hash["workers"].length} workers"
