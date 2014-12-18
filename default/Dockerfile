FROM agrafix/ghc7.8

MAINTAINER joel.hermanns@gmail.com

# Create default config
RUN cabal update
# Add stackage remote repo
RUN sed -i 's/^remote-repo: [a-zA-Z0-9_\/:.]*$/remote-repo: stackage:http:\/\/www.stackage.org\/stackage\/8cd5d39814d13a396d67f1119e61189bcb825e05/g' .cabal/config
# Update packages
RUN cabal update
# Generate locale otherwise happy (because of tf-random) will fail
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
RUN echo $LANG
# Install newest alex and happy
RUN cabal install alex happy
# Install yesod
RUN cabal install yesod yesod-bin yesod-static
