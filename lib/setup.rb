require_relative 'csv_reader'
require_relative 'area'

class Setup
  attr_accessor :areas

  def initialize
    cvs = CVSReader.new("/free-zipcode-database.csv")

    @areas = []
    cvs.read do |item|
      @areas << Area.new(item)
    end

    self
  end

end