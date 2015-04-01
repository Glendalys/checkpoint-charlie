class Actor

  attr_reader :first_name, :last_name, :birth_name, :photo_name, :photo_url

  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @birth_name = args[:birth_name]
    @photo_name = args[:photo_name]
    # @photo = Photo.new(args["photo_name"], args["photo_url"])
    @photo_url = args[:photo_url]
  end



end

class Movie
  attr_reader :name, :synopsis, :release_year, :photo_name, :photo_url

  def initialize(args)
    @name = args[:name]
    @synopsis= args[:synopsis]
    @release_year = args[:release_year]
    @photo_name = args[:photo_name]
    @photo_url = args[:photo_url]
  end

end

#running out of time, moving onto next challenge instead of completing this but to finish it I would want a photo class that would would have photo url and photo name and I could call photo.name in the actor and movie classes