FROM python:3

WORKDIR /code

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_ENV=development

CMD [ "flask", "--app", "app.server", "run" ]