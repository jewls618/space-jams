class Track
  attr_accessor :album_id, :id, :title, :track_number, :duration_ms, :album_name, :artists

  def initialize(album_id, id, title, track_number, duration_ms, album_name, artists)
    @album_id = album_id
    @id = id
    @title = title
    @track_number = track_number
    @duration_ms = duration_ms
    @album_name = album_name
    @artists = artists
  end
end
