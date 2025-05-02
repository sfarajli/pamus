# Pamus
This script allows you to download audio files from YouTube Music based on a list of song names, and it also tags the downloaded files with relevant metadata (such as title, artist, album, genre).

## Dependencies:
- [Python 3](https://www.python.org)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [mutagen](https://mutagen.readthedocs.io/en/latest/)
- [ytmusicapi](https://ytmusicapi.readthedocs.io/en/stable/)

## Help
For help, run:
```Bash
pamus -h 

## Install
Simply run:
``` Bash
make
```
## Usage Examples

1. Using Input File:  
   To download songs listed in the input file (`$HOME/.config/pamus/list.txt`) to the default output directory (`$HOME/music`) in mp3 format:
   ```bash
   pamus
   ```

2. Specifying Songs Directly:  
   To download songs provided directly on the command line:
   ```bash
   pamus -s "Song Name 1" "Song Name 2" "Song Name 3"
   ```
   This will download the specified songs to the default directory (`$HOME/music`) in the default format (`mp3`).

3. Combining Both Methods:  
   To download both songs from the input file and songs provided directly on the command line:
   ```bash
   pamus -s "Song Name 1" "Song Name 2" -i /path/to/song_list.txt
   ```
   This will download the songs listed in `song_list.txt` as well as the songs provided directly via the command line.

4. With Additional Options:  
   To download songs from a specific list, save them to a custom directory, use a specific audio format, and enable verbose output:
   ```bash
   pamus -o /path/to/save/music -i /path/to/song_list.txt -f opus -v
   ```

### Example list.txt file (supports comments)
```txt
# Rock
Queen - Bohemian Rhapsody # One of the best
```
