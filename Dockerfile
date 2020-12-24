FROM python:alpine
WORKDIR /app
COPY Requirements.txt .
COPY app.py .
RUN pip install -r Requirements.txt
RUN export FLASK_APP=app.py
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]