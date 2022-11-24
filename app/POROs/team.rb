class Team
  attr_reader :id,
              :name,
              :link,
              :venue,
              :abbreviation,
              :teamName,
              :locationName,
              :firstYearOfPlay,
              :division,
              :conference,
              :franchise,
              :shortName,
              :officialSiteUrl,
              :franchiseId,
              :active

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @link = data[:link]
    @venue = data[:venue]
    @abbreviation = data[:abbreviation]
    @teamName = data[:teamName]
    @locationName = data[:locationName]
    @firstYearOfPlay = data[:firstYearOfPlay]
    @division = data[:division]
    @conference = data[:conference]
    @franchise = data[:franchise]
    @shortName = data[:shortName]
    @officialSiteUrl = data[:officialSiteUrl]
    @franchiseId = data[:franchiseId]
    @active = data[:active]
  end
end
