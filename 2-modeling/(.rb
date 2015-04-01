# require "pry"
# Put your implementation here.
# The tests in the spec file are your guide.

class Actor
  attr_reader :first_name, :last_name, :birth_name, :photo
  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @birth_name = args[:birth_name]
    @photo_name = Photo.new(args[:photo_name], args[:photo_url])
    @photo = args[:photo_url]
  end
end

class Movie
  attr_reader :name, :synopsis, :release_year, :photo
  def initialize(args)
    @name = args[:name]
    @synopsis = args[:synopsis]
    @release_year = args[:release_year]
    @photo_name = args[:photo_name]
    @photo_url = args[:photo_url]
  end
end

class Photo
  def initialize(args)

    @photo_name = args[photo_name]
        @photo_url = args[photo_url]
  end
end
