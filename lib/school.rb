class School
  attr_reader :name
  def initialize(name)
    @name = name
    roster = Hash.new
  end

end
