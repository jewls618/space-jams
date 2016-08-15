class Album
  attr_accessor :id, :title, :artists, :tracks, :duration_min, :duration_ms, :summary

  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration_min
    album_total_time = 0
    @tracks.each do |track|
      album_total_time += (track.duration_ms).to_s.to_f
    end
    (album_total_time / 60000).round(2)
  end

  def summary
    return "\nName: #{title}\nArtist(s): #{artists}\nDuration (min.): #{duration_min} \nTracks:\n#{@tracks.map {|track| "- #{track.title}\n"}.join}"
  end
end
