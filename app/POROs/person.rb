class Person
  attr_reader :id, :fullName, :link

  def initialize(data)
    @id = data[:id]
    @fullName = data[:fullName]
    @link = data[:link]
  end
end