class Score
  attr_reader :home, :away

  def initialize(data)
    @home = data[:home]
    @away = data[:away]
  end
end