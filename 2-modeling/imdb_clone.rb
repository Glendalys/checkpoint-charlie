# Put your implementation here.
# The tests in the spec file are your guide.
class Actor
  attr_accessor :first_name, :last_name, :birth_name, :photo
  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @birth_name = args[:birth_name]
    @photo = Photo.new(args[:photo_name], args[:photo_url])
  end
end

class Movie
  attr_accessor :name, :synopsis, :release_year, :photo
  def initialize(args)
    @name = args[:name]
    @synopsis = args[:synopsis]
    @release_year = args[:release_year]
    @photo = Photo.new(args[:photo_name], args[:photo_url])
  end
end

class Photo
  attr_accessor :name, :url
  def initialize(name, url)
    @name = name
    @url = url
  end
end
