# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



region_list = [ "East Coast", "West Coast", "South" , "Midwest", "West" ]

region_list.each do |name|
  Region.create( name: name)
end


state_list = [
  { :name => 'Alabama', :abv => 'AL', :region_id => 3},
  { :name => 'Alaska', :abv => 'AK', :region_id =>3},
  { :name => 'Arizona', :abv => 'AZ', :region_id => 5},
  { :name => 'Arkansas', :abv => 'AR',:region_id => 3},
  { :name => 'California', :abv => 'CA',:region_id => 5},
  { :name => 'Colorado', :abv => 'CO', :region_id => 5},
  { :name => 'Connecticut', :abv => 'CT', :region_id => 1},
  { :name => 'Delaware', :abv => 'DE', :region_id => 1 },
  { :name => 'District of Columbia', :abv => 'DC', :region_id => 1},
  { :name => 'Florida', :abv => 'FL', :region_id => 3},
  { :name => 'Georgia', :abv => 'GA', :region_id => 3},
  { :name => 'Hawaii', :abv => 'HI', :region_id => 5 },
  { :name => 'Idaho', :abv => 'ID', :region_id => 4},
  { :name => 'Illinois', :abv => 'IL', :region_id => 4},
  { :name => 'Indiana', :abv => 'IN', :region_id => 4},
  { :name => 'Iowa', :abv => 'IA', :region_id => 4},
  { :name => 'Kansas', :abv => 'KS', :region_id => 4},
  { :name => 'Kentucky', :abv => 'KY', :region_id => 4},
  { :name => 'Louisiana', :abv => 'LA', :region_id => 3},
  { :name => 'Maine', :abv => 'ME', :region_id => 1},
  { :name => 'Maryland', :abv => 'MD', :region_id => 1},
  { :name => 'Massachusetts', :abv => 'MA', :region_id => 1},
  { :name => 'Michigan', :abv => 'MI', :region_id => 4},
  { :name => 'Minnesota', :abv => 'MN', :region_id => 4},
  { :name => 'Mississippi', :abv => 'MS', :region_id => 3},
  { :name => 'Missouri', :abv => 'MO', :region_id => 3},
  { :name => 'Montana', :abv => 'MT', :region_id => 2},
  { :name => 'Nebraska', :abv => 'NE', :region_id => 4},
  { :name => 'Nevada', :abv => 'NV', :region_id => 2},
  { :name => 'New Hampshire', :abv => 'NH', :region_id => 1},
  { :name => 'New Jersey', :abv => 'NJ', :region_id => 1},
  { :name => 'New Mexico', :abv => 'NM', :region_id => 2},
  { :name => 'New York', :abv => 'NY', :region_id => 1},
  { :name => 'North Carolina', :abv => 'NC', :region_id =>3},
  { :name => 'North Dakota', :abv => 'ND', :region_id => 4},
  { :name => 'Ohio', :abv => 'OH', :region_id => 4},
  { :name => 'Oklahoma', :abv => 'OK', :region_id => 4},
  { :name => 'Oregon', :abv => 'OR', :region_id =>2},
  { :name => 'Pennsylvania', :abv => 'PA', :region_id => 1},
  { :name => 'Rhode Island', :abv => 'RI', :region_id => 1},
  { :name => 'South Carolina', :abv => 'SC', :region_id => 3},
  { :name => 'South Dakota', :abv => 'SD', :region_id => 4},
  { :name => 'Tennessee', :abv => 'TN', :region_id => 3},
  { :name => 'Texas', :abv => 'TX', :region_id => 3},
  { :name => 'Utah', :abv => 'UT', :region_id => 4},
  { :name => 'Vermont', :abv => 'VT', :region_id => 1},
  { :name => 'Virginia', :abv => 'VA', :region_id => 3},
  { :name => 'Washington', :abv => 'WA', :region_id => 2},
  { :name => 'West Virginia', :abv => 'WV', :region_id => 3},
  { :name => 'Wisconsin', :abv => 'WI', :region_id => 4},
  { :name => 'Wyoming', :abv => 'WY', :region_id => 4}
]

State.create(state_list)
