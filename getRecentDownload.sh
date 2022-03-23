#!/usr/bin/env sh

windowsDownloadsLocation="/mnt/c/Users/Christiana/Downloads"
fileNameRecentDownload=$(ls -Art $windowsDownloadsLocation | tail -1)
mv "$windowsDownloadsLocation/$fileNameRecentDownload" .
