yesod-docker
============

Docker images with `yesod`, `yesod-bin` and `yesod-static` preinstalled from a stackage snapshot.

To use as development environment run:

```
$ docker run -it -v `pwd`:/code jhedev/yesod-docker bash
```

(The `latest` version currently uses an exclusive stackage snapshot from [2014-11-01](http://www.stackage.org/snapshot/ghc782014-11-01exclusive).)

To use the [nightly snapshot](http://www.stackage.org/nightly) run:

```
$ docker run -it -v `pwd`:/code jhedev/yesod-docker:nightly bash
```

Same for the [lts](http://www.stackage.org/lts) one:

```
$ docker run -it -v `pwd`:/code jhedev/yesod-docker:lts bash
```
