FROM golang AS build

WORKDIR /opt/scratch-go

COPY main.go main.go
COPY go.mod go.mod

RUN go build .

FROM scratch

COPY --from=build /opt/scratch-go /

CMD ["/scratch-go"]
