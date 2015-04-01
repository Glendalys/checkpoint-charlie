# Put your implementation here.
# The tests in the spec file are your guide.

class Actor

  attr_reader :first_name, :last_name, :birth_name, :photo_name, :photo_url, :photo

  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @birth_name = args[:birth_name]
    @photo_name = args[:photo_name]
    @photo_url = args[:photo_url]
    @photo = [@photo_name, @photo_url]
  end

  def self.name
    self[0]
  end

  def self.url
    self[1]
  end

end

class Movie

  attr_reader :name, :synopsis, :release_year, :photo_name, :photo_url, :photo

  def initialize(args)
    @name = args[:name]
    @synopsis = args[:synopsis]
    @release_year = args[:release_year]
    @photo_name = args[:photo_name]
    @photo_url = args[:photo_url]
    @photo = {"name" => @photo_name, "url" => @photo_url}
  end

end
