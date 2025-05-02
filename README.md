# Pamus
This script allows you to download audio files from YouTube Music based on a list of song names,
and it also tags the downloaded files with relevant metadata (such as title, artist, album, genre).

## Dependencies:
- [Python 3](https://www.python.org)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [mutagen](https://mutagen.readthedocs.io/en/latest/)
- [ytmusicapi](https://ytmusicapi.readthedocs.io/en/stable/)

## Script Overview
1. **Reads a list of song names** from a specified input file (by default $HOME/.config/pamus/list.txt).
2. **Searches for each song on YouTube Music** using the YTMusic API.
3. **Downloads the audio** in the specified format (mp3, flac, etc.) to specified directory (by default $HOME/music).
4. **Tags the audio files** with metadata (title, artist, album, genre).
5. Supports downloading multiple songs concurrently using threads.

## Help
For help run:
```Bash
pamus -h 
```

## Install
Simply run:
``` Bash
make
```
### Examples

``` Bash
pamus
```
This will download the songs listed in `$HOME/.config/pamus/list.txt` to the `$HOME/music` directory in mp3 format.

```bash
pamus -o /path/to/save/music -i /path/to/song_list.txt -f mp3 -v
```
This will download the songs listed in `song_list.txt` to the specified output directory in MP3 format with verbose output enabled.

### Example list.txt file (supports comments)
```txt
# Rock
Queen - Bohemian Rhapsody # One of the best
```
