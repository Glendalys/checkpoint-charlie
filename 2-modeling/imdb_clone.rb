# Put your implementation here.
# The tests in the spec file are your guide.

class Actor

  attr_accessor :first_name, :last_name, :birth_name, :photo, :photo_name, :photo_url
  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @birth_name = args[:birth_name]
    @photo_name = args[:photo_name]
    @photo_url = args[:photo_url]
    @photo = Photo.new(name: @photo_name, url: @photo_url)
  end

end

class Movie

  attr_accessor :name, :synopsis, :release_year, :photo, :photo_name, :photo_url
  def initialize(args)
    @name = args[:name]
    @synopsis = args[:synopsis]
    @release_year = args[:release_year]
    @photo_name = args[:photo_name]
    @photo_url = args[:photo_url]
    @photo = Photo.new(name: @photo_name, url: @photo_url)
  end
end


class Photo
  attr_accessor :name, :url
  def initialize(args)
    @name = args[:name]
    @url = args[:url]
  end
end


actor = Actor.new({ :name => "Fight Club",
                :synopsis => "An insomniac office worker looking for a way to change his life crosses paths with a devil-may-care soap maker and they form an underground fight club that evolves into something much, much more...",
                :release_year => "1999",
                :photo_name => "poster",
                :photo_url => "http://sweet.com/fight_club" })

p actor

p actor.photo.name

# - actor has a first name
# - actor has a last name
# - actor has an birth name
# - actor has a photo
# - movie has a name
# - movie has a synopsis
# - movie has a release year
# - movie has a photo
# - photo has a name
# - photo has a url
