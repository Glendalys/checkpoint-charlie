# Put your implementation here.
# The tests in the spec file are your guide.


class Actor
  attr_reader :first_name, :last_name, :birth_name, :photo_url, :photo_name

  def initialize(args)
    args = {first_name: nil,
            last_name: nil,
            birth_name:nil,
            photo_name:nil,
            photo_url: nil }
  end

end


class Movie

  def initialize(movie_args)
    movie_args = {name: nil,
                  synopsis: nil,
                  release_year:nil,
                  photo_name:nil,
                  photo_url:nil}
  end

end

p actor = Actor.new(["Brad","Pitt","William Bradley Pitt","oscars","http://awesome.com/brad"])
