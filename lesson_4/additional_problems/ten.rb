# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

munsters.each_pair do |key, value|
  if value["age"] >= 0 && value["age"] <= 17
    value["age_group"] = "kids"
  elsif value["age"] > 17 && value["age"] < 65
    value["age_group"] = "adult"
  elsif value["age"] > 64
    value["age_group"] = "senior"
  end
end

p munsters