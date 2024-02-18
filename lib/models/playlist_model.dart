import 'package:music_player_app/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> song;
  final String imageUrl;

  const Playlist(
      {required this.title, required this.song, required this.imageUrl});

  static List<Playlist> playlists = [
   Playlist(
      title: "Hip Hop R&B Mix",
      song: Song.songs,
      imageUrl: 'https://picsum.photos/250?image=9',
    ),
    Playlist(
      title: "Rack & Roll",
      song: Song.songs,
      imageUrl: 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',

  ),
    Playlist(
      title: "Techno",
      song: Song.songs,
      imageUrl: 'https://picsum.photos/250?image=9',
    ),
  ];
}