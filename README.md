# GarminBulkExport

Here's javascript that can be run in any modern browser fairly simply in javascript. 
You'll want to pre-set a download location in your browser settings to some folder, name it TCX or something, and tell your browser to auto-download there, or else you'll get a ton of popup save dialogs.

First Navigate to the last (most recent) activity you have in Garmin Connect (as in https://connect.garmin.com/modern/activity/5555555555 ), then hit F12 (should work in chrome/IE) to open dev tools to get to the Javascript Console. 
Then paste the code and hit enter to run it. Can change ttl from 100 to whatever # of activities you want to download.
If you want a different format, change the "tcx" part of the URL to the appropriate format acronym if garmin supports it.
If your connection is too slow to do a full download in less than 3 seconds every time, change the downloadTimeoutLength from 3 * 1000 to whatever number you want (it's 3*1000 because that's 3000 milliseconds = 3 seconds).

It goes from most recent back downloading each one. If you don't put the right total # to download them all, just navigate to the last one it got and re-run from there.*/







## split.sh 

split.sh will split the activities to directories of 10 files, as Strava limit 25 uploads at a time. 

Downloaded activities should go into `$src`, it will end up in `$dest`

```
export src="/src"
export dest="dest"
```
