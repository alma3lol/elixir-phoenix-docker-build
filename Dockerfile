FROM bitwalker/alpine-elixir-phoenix:latest

CMD mkdir /app

WORKDIR /app

COPY entry-point.sh .

CMD chmod +x entry-point.sh

ENTRYPOINT /app/entry-point.sh
