PORT=3500

echo "uvicorn 살행 시작!~"
python3.9 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
export ENV=UVICORN AWS_DEFAULT_REGION=ap-northeast-2
nohup uvicorn main:app --reload --port $PORT > nohup.out 2> error.log &
exit 0