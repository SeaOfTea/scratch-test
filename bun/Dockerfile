FROM oven/bun AS build

WORKDIR /opt/app

COPY package.json ./
COPY bun.lockb ./
COPY index.ts ./

RUN bun install
RUN bun build --compile --outfile bun-app index.ts

FROM gcr.io/distroless/cc
#FROM oven/bun:alpine

COPY --from=build /opt/app/bun-app /opt/app/bun-app

WORKDIR /opt/app

CMD ["./bun-app"]
