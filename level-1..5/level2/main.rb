require "json"

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

# 1 method for calculation of price from worker's status

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

data_as_hash = extract_datas_from_json("level2/data.json")


workers_outputs = data_as_hash["workers"].map do |w|
  { "id" => w["id"],
    "price" => price_by_status(w["status"]) * data_as_hash["shifts"].count { | shift |  shift["user_id"] == w["id"] }
  }
end


write_output_as_json({ "workers" => workers_outputs } ,"level2/output.json")

puts "output.json generated for #{data_as_hash["workers"].length} workers"


