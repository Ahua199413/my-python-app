# 1. 使用官方輕量級 Python 作為基底
FROM python:3.10-slim

# 2. 設定容器內的工作目錄
WORKDIR /app

# 3. 先複製套件清單並安裝 (利用 Docker 快取機制)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. 複製所有程式碼進容器
COPY . .

# 5. 啟動指令
CMD ["python", "app.py"]