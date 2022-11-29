if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MyBotzz/RashmikaBot.git /RashmikaBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RashmikaBot
fi
cd /RashmikaBot
pip3 install -U -r requirements.txt
echo "Starting RashmikaBot...."
python3 bot.py
