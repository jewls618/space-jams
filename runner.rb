require 'csv'
require_relative 'album'
require_relative 'track'

albums = []

CSV.foreach('space_jams.csv', headers: true, header_converters: :symbol) do |row|
  track = row.to_hash
  row = Track.new(track[:album_id], track[:track_id], track[:title], track[:track_number], track[:duration_ms], track[:album_name], track[:artists])
  # find an album by matching the album.id with track[:album_id]
  album = albums.find { |a| a.id == row.album_id }

  # if the album hasn't been added to the albums array yet, add it
  if album.nil?
    album = Album.new(row.album_id, row.album_name, row.artists)
    albums << album
  end

  # add the track to the album's @tracks instance variable
  album.tracks << row
end

# print out the summary for each album
albums.each do |album|
  puts album.summary
end
