PORT=3500
PIDS=$(lsof -t -i:$PORT)

if [ -z "$PIDS" ]; then
    echo "No process is using port $PORT";
else
  kill -9 $(lsof -t -i :$PORT)
fi