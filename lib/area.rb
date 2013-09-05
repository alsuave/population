class Area
  attr_accessor :zip_code, :estimated_population, :city, :state

  def initialize(hash)
      @zip_code = hash[:zip_code].to_i || 0
      @estimated_population = hash[:estimated_population].to_i || 0
      @city = hash[:city] || "n/a"
      @state = hash[:state] || "n/a"
  end

  def to_s
    # Why does the answer not use instance variables?
    "#{@city}, #{@state} #{@zip_code} has #{@estimated_population} people."
  end
end