class Season
  attr_reader :seasonId

  def initialize(data)
    @years = data(:seasonId)
  end
end