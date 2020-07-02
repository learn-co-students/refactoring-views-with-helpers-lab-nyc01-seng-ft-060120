class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if artist
  end

  def artist_name=(name)
    assign_artist = Artist.find_or_create_by(name: name)
    self.artist = assign_artist
  end
end
