yesod-docker
============

Docker images with `yesod`, `yesod-bin` and `yesod-static` preinstalled from a stackage snapshot.

To use as development environment run:

```
$ docker run -it -v `pwd`:/code jhedev/yesod-docker bash
```

(The `latest` version currently uses a nightly stackage snapshot from [2015-06-02](http://www.stackage.org/nightly-2015-06-02).)

To use the [nightly snapshot](http://www.stackage.org/nightly) run:

```
$ docker run -it -v `pwd`:/code jhedev/yesod-docker:nightly bash
```

Same for the [lts](http://www.stackage.org/lts) one:

```
$ docker run -it -v `pwd`:/code jhedev/yesod-docker:lts bash
```
