# JPG-Exif-Rotation-Fix
Some devices (like digital photo frames) dont use JPG's Exif Metadata when displaying Pictures. This can result in poorly rotated pictures. This Batch will simply apply the needed rotation(without quality loss!) to each picture and then edit the Exif Metadata, so that every device can display the Pictures correctly, without Exif Support.

This Batch uses [Jhead](http://www.sentex.net/~mwandel/jhead/) and [Jpegtran](https://jpegclub.org/jpegtran/).
## How to Use
  1. Download the Files
  2. Add the Photos to the "AddFilesHere" Folder
  3. Run "run.bat"
  4. Accept the Admin Promt
  5. wait (ignore error Messages for missing .jpeg files if you only added .jpg files, it will look for both)
  6. when it says "done" you can move the photos out of the Folder
