# LiquidCast
Liquidsoap and Icecast together in one docker image based on Alpine.<br>
The size of the downloaded image is 267 Mb.

Latest:
- Liquidsoap: 2.1.4
- Icecast: 2.4.4

This image based on savonet/liquidsoap-alpine:
- https://github.com/savonet/liquidsoap
- https://hub.docker.com/r/savonet/liquidsoap-alpine

Docker hub: https://hub.docker.com/r/evgeniydoctor/liquidcast

## Run
```
docker run -d \
--name radio \
-p 8000:8000 \
-v /path/liquidsoap.liq:/etc/liquidsoap/liquidsoap.liq \
-v /path/icecast.xml:/etc/icecast/icecast.xml \
-v /path/to/music/dir1:/music/dir1 \
evgeniydoctor/liquidcast:latest
```

You need to add `settings.init.allow_root.set(true)` line to your `liquidsoap.liq` file:
```
#!/usr/bin/liquidsoap
settings.init.allow_root.set(true)
...
```
