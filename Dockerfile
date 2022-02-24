FROM golang:1.17 AS build
COPY hello-world.go hello-world.go
RUN go build hello-world.go

FROM scratch AS final
COPY --from=build /go/hello-world /go/hello-world
CMD ["/go/hello-world"]