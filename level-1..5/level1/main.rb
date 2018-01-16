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


data_as_hash = extract_datas_from_json("level1/data.json")

workers_outputs = data_as_hash["workers"].map do |w|
  { "id" => w["id"],
    "price" => w["price_per_shift"] * data_as_hash["shifts"].count { | shift |  shift["user_id"] == w["id"] }
  }
end


write_output_as_json({ "workers" => workers_outputs } ,"level1/output.json")




