## Google Fonts Fork with a Bash Script for Extracting .ttf Files into One Folder

If you want to use Google webfonts with a desktop program like Adobe Photoshop, then you generally have to download them one by one, extract the .ttf font file and copy it over to your computer's font directory. 

You can download all of the Google webfonts at once, but these are not organized in a way that makes copying them over to your font directory easy. I wrote a simple bash script as a solution to this problem. The script grabs all the .ttf font files in the Google Fonts repo and copies them over to the folder of your choice. 

### Bash Script Instructions

First download or clone this repo. Then open your terminal and go to the directory of the newly downloaded or cloned repo and just run the following in your terminal:

```
bash fonts.sh
```

You can also run the bash script from anywhere as long as you call its full file path like so

```
bash path/to/fonts/fonts.sh
```

You will then be prompted to name a unique directory where the .ttf files will be extracted to. 

After the files have been extracted, you can just move them to your fonts directory which on my computer would go something like this:

```
mv mynewdir/*.ttf /Library/Fonts/
```

You can also alter the fonts.sh script to cp the *.ttf files directly into your font directory if you prefer.

Original readme file for this repo found here: https://github.com/google/fonts
