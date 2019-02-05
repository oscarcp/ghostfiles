# Weather is deferred to this script so we can put it on the background with
# ad delay and not block the rest of the sway bar

while [ 1 ]
do
    weather=$(curl -Ss 'https://wttr.in/Pontevedra?0&T&Q&format=1')
    echo "$weather"
    sleep 60
done
