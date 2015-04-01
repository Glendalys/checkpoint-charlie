class Actor

  attr_reader :first_name, :last_name, :birth_name, :name, :photo, :photo_url

  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @birth_name = args[:birth_name]
    @name = args[:photo_name]
    @photo = Photo.new(args[:photo_name])
    @photo_url = args[:photo_url]
  end



end

class Movie
  attr_reader :movie_name, :synopsis, :release_year, :name, :photo_url

  def initialize(args)
    @name = args[:name]
    @synopsis= args[:synopsis]
    @release_year = args[:release_year]
    @name = args[:photo_name]
    @photo = Photo.new(args[:photo_name])
    @photo_url = args[:photo_url]
  end

end

#running out of time, moving onto next challenge instead of completing this but to finish it I would want a photo class that would would have photo url and photo name and I could call photo.name in the actor and movie classes


class Photo
  attr_reader :name
  def initialize(photo_name)
    @name = photo_name
  end
end