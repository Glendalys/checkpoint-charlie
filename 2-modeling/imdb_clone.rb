# Put your implementation here.
# The tests in the spec file are your guide.


class Actor
  attr_reader :first_name, :last_name ,:birth_name,:photo_name ,:photo_url
  def initialize(args = {})
    @first_name = args[]
    @last_name = args[]
    @birth_name = args[]
    @photo_name = args[]
    photo_url = args[]
  end

end


class Movie
  attr_reader :name, :synopsis, :release_year, :photo_name, :photo_url
  def initialize(args = {})
    @name = args[]
    @synopsis= args[]
    @release_year = args[]
    @photo_name = args[]
    @photo_url = args[]
  end
end

