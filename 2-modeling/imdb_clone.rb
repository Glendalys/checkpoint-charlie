class Actor
  attr_accessor  :first_name, :last_name, :birth_name, :photo_name, :photo_url, :photo_url, :photo
    def initialize(args)
   @first_name = args[:first_name]
    @last_name = args[:last_name]
    @birth_name = args[:birth_name]
    @photo = Photo.new
    @photo.name =  args[:photo_name]
    @photo.url = args[:photo_url]


  end
end

class Movie
  attr_accessor  :name, :synopsis, :release_year, :photo_name, :photo_url, :photo
  def initialize(args)
     @name = args[:name]
    @synopsis = args[:synopsis]
    @release_year = args[:release_year]
     @photo = Photo.new
    @photo.name =  args[:photo_name]
    @photo.url = args[:photo_url]
  end
end


class Photo
  attr_accessor :name, :url
  def initialize(args={})
    @name = args[:name]
    @url = args[:url]
  end
end

