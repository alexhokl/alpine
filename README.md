A Docker alpine image with a non-privileged user setup

##### To build an image

In `Dockerfile`,

```dockerfile
FROM alexhokl/alpine

COPY app-exe .

EXPOSE 3000

HEALTHCHECK --interval=5s --timeout=3s CMD \
  curl --fail http://localhost:3000/ || exit 1

CMD ["/home/app/app-exe"]
