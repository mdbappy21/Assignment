import 'Media.dart';
import 'Song.dart';

void main() {
  Media media = Media();
  Song song = Song(artist:"Shuvo");
  media.play();
  song.play();
}
