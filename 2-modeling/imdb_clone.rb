# Put your implementation here.
# The tests in the spec file are your guide.

class Actor
  def initialize(args)
    @first_name = args["first_name"]
    @last_name = args["last_name"]
    @birth_name = args["birth_name"]
    @photo = args["photo"]
  end
end

class Movie
  def initialize(args)
    @name = args["name"]
    @synopsis = args["synopsis"]
    @release_year = args["release_year"]
    @photo = args["photo"]
  end
end

class Photo
  def initialize(args)
    @photo_url = args["photo_url"]
    @photo_name = args["photo_name"]
  end
end
