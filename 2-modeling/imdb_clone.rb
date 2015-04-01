# Put your implementation here.
# The tests in the spec file are your guide.

class Actor

  def initialize(first_name, last_name, birth_name, photo_name, photo_url)

    @first_name = first_name
    @last_name = last_name
    @birth_name = birth_name
    @photo_name = photo_name
    @photo_url = photo_url

  end

end

class Movie

  def initialize(name, synopsis, release_year, photo_name, photo_url)

    @name = name
    @synopsis = synopsis
    @release_year = release_year
    @photo_name = photo_name
    @photo_url = photo_url

  end

end