class Person < ActiveRecord::Base

  #No Blank Fields Validation
  validates :first_name,
            :last_name,
            :email,
            :address_line_one,
            :city,
            :state,
            :zip_code,
            :presence => true

  #State Abbreviation Validation
  @us_states = [
      "AK","Alaska",
      "AL","Alabama",
      "AR","Arkansas",
      "AZ","Arizona",
      "CA","California",
      "CO","Colorado",
      "CT","Connecticut",
      "DC","District of Columbia",
      "DE","Delaware",
      "FL","Florida",
      "GA","Georgia",
      "HI","Hawaii",
      "IA","Iowa",
      "ID","Idaho",
      "IL","Illinois",
      "IN","Indiana",
      "KS","Kansas",
      "KY","Kentucky",
      "LA","Louisiana",
      "MA","Massachusetts",
      "MD","Maryland",
      "ME","Maine",
      "MI","Michigan",
      "MN","Minnesota",
      "MO","Missouri",
      "MS","Mississippi",
      "MT","Montana",
      "NC","North Carolina",
      "ND","North Dakota",
      "NE","Nebraska",
      "NH","New Hampshire",
      "NJ","New Jersey",
      "NM","New Mexico",
      "NV","Nevada",
      "NY","New York",
      "OH","Ohio",
      "OK","Oklahoma",
      "OR","Oregon",
      "PA","Pennsylvania",
      "RI","Rhode Island",
      "SC","South Carolina",
      "SD","South Dakota",
      "TN","Tennessee",
      "TX","Texas",
      "UT","Utah",
      "VA","Virginia",
      "VI","Virgin Islands",
      "VT","Vermont",
      "WA","Washington",
      "WI","Wisconsin",
      "WV","West Virginia",
      "WY","Wyoming" ]

  validates :state, :inclusion => { :in => @us_states }

  #Zip_code Validation
  validates :zip_code, length: { minimum: 5 }


  #Email Format
  validates :email,
            uniqueness: true

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                             message: "Format Required: person@example.com" }
end



