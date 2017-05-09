# Gooker

Gooker is a full-fledged framework for server daily-maintenance. Its basic features include auto deployment on
network notifications from remote hosts and real-time monitoring on designated log files.

For now, Gooker is still under heavy development and is way behind its first major release. Gooker will be applied to my
other open-source projects ([WeTrack](https://github.com/WeTrack), [HearthIntellect](https://github.com/AlphaHearth)) for
starter.

## Future Tasks

### CI Module:

1. Generate Bash script on query parameters
2. CI vendor server use the generated script to upload the built package
3. Security token for uploading can be configured as secret environment variable

- [ ] Cooperation with [Travis CI](https://travis-ci.org/)

### Listener Module:

- [ ] Receive Github event on HTTP and HTTPS endpoints.
- [ ] Log each hook execution in seperated local files.
- [ ] Return more informative response when error or panic occurs.
- [ ] Add `debug` mode which return stack trace in response when error or panic occurs.

### Other Module:

- [ ] Web interface for server monitoring and management
- [ ] Distributed mode: master receives requests, master builds and notifies workers to download and deploy
