date_formatted=$(date "+%F (w%V)")
time=$(date "+%H:%M")
battery_charge=$(upower --show-info $(upower --enumerate | grep 'BAT') | egrep "percentage" | awk '{print $2}')
battery_plug=$(upower --show-info $(upower --enumerate | grep 'BAT') | egrep "state" | awk '{print $2}')
audio_volume=$(pamixer --get-volume)

if [ $battery_plug = "discharging" ];
then
    battery_pluggedin='!!'
else
    battery_pluggedin='⚡'
fi

weather=$(curl -Ss 'https://wttr.in/Pontevedra?0&T&Q&format=1')

echo "$weather | 🔉 $audio_volume% | $battery_charge $battery_pluggedin | $date_formatted 🕘 $time"
