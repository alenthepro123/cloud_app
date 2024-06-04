FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV STREAMLIT_SERVER_PORT 8501

EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "nbapp.py"]
