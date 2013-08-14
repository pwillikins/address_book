class City < ActiveRecord::Base

  #Elevation Validation
  validates :elevation,
            :numericality => {
                :greater_than_or_equal_to => 3315,
                :if => lambda {|city| city.state == "CO"},
                :message => "is too low, lowest point  in CO is 3315 feet."
            }

  #Population Validation
  validates :population,
            :numericality => {
                :greater_than => 0
            }

  #No Blank Fields Validation
  validates :name,
            :population,
            :elevation,
            :state,
            :presence =>  true

  #
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
      message: "Only letters allowed" }


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

end


