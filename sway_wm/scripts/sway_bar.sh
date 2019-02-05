# Change this according to your device
keyboard_device_name="1241:8211:daskeyboard"
date_formatted=$(date "+%Y/%m/%d (w%-V)")
time=$(date "+%H:%M")
battery_charge=$(upower --show-info $(upower --enumerate | grep 'BAT') | egrep "percentage" | awk '{print $2}')
battery_plug=$(upower --show-info $(upower --enumerate | grep 'BAT') | egrep "state" | awk '{print $2}')
audio_volume=$(pamixer --sink `pactl list sinks short | grep analog | awk '{print $1}'` --get-volume)
language=$(swaymsg -r -t get_inputs | awk '/1241:8211:daskeyboard/;/xkb_active_layout_name/' | grep -A1 '\b1241:8211:daskeyboard\b' | grep "xkb_active_layout_name" | awk -F '"' '{print $4}')
loadavg_5min=$(cat /proc/loadavg | awk -F ' ' '{print $2}')
media_artist=$(playerctl metadata artist)
media_song=$(playerctl metadata title)
player_status=$(playerctl status)

if [ $battery_plug = "discharging" ];
then
    battery_pluggedin='⚠'
else
    battery_pluggedin='⚡'
fi

if [ $player_status = "Playing" ]
then
    song_status='▶'
elif [ $player_status = "Paused" ]
then
    song_status='⏸'
else
    song_status='⏹'
fi

# Removed weather because we are requesting it too many times to have a proper
# refresh on the bar
#weather=$(curl -Ss 'https://wttr.in/Pontevedra?0&T&Q&format=1')
#echo " $language 🌎 | $weather | 🔉 $audio_volume% | $battery_pluggedin $battery_charge | $date_formatted 🕘 $time"

echo "🎧 $song_status $media_artist - $media_song                                  ⌨ $language | ♨ $loadavg_5min | 🔉 $audio_volume% | $battery_pluggedin $battery_charge | $date_formatted 🕘 $time"
