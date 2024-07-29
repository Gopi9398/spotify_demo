resource "spotify_playlist" "kalki-playlist" {
  name        = "kalki-playlist"
  description = "My playlist is so awesome"
  tracks = ["3z8DnKyVl4TVZHT2KOHHpw"]
}

data "spotify_search_track" "ariana_grande" {
  artist = "Thaman"
}

resource "spotify_playlist" "demo" {
    name = "test"
    tracks = [data.spotify_search_track.Thaman.tracks[0].id,
    data.spotify_search_track.Thaman.tracks[1].id,
    data.spotify_search_track.Thaman.tracks[4].id]
   
}