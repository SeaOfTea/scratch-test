FROM denoland/deno AS build

WORKDIR /opt/app

COPY main.ts main.ts

RUN deno compile -o deno-app main.ts

FROM gcr.io/distroless/cc

COPY --from=build /opt/app/deno-app /opt/app/deno-app

WORKDIR /opt/app

CMD ["./deno-app"]
