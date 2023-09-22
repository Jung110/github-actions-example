FROM python:3.11.2

WORKDiR /usr/src/app

COPY . .

RUN python -m pip install --ungrade pip
RUN pip install -r requirements.txt

WORKDiR ./myapp

CMD gunicorn main:app --bind 0.0.0.0:8001

EXPOSE 8001