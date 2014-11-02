FROM agrafix/ghc7.8

MAINTAINER joel.hermanns@gmail.com

# Create default config
RUN cabal update
# Add stackage remote repo
RUN sed -i 's/^remote-repo: [a-zA-Z0-9_\/:.]*$/remote-repo: stackage:http:\/\/www.stackage.org\/stackage\/8cd5d39814d13a396d67f1119e61189bcb825e05/g' .cabal/config
# Update packages
RUN cabal update
# Install yesod
RUN cabal install yesod yesod-bin yesod-static
