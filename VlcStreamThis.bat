@echo off
set vlcPath="C:\Program Files\VideoLAN\VLC\vlc.exe"
if [%1]==[] goto :eof
:loop
start "" %vlcPath% --one-instance --playlist-enqueue %1 :sout=#transcode{vcodec=none,acodec=mp3,ab=192,channels=2,samplerate=44100,scodec=none}:http{mux=mp3,dst=:8080/} :no-sout-all :sout-keep
shift
if not [%1]==[] goto loop
Exit






