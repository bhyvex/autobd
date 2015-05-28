#!/bin/bash

git diff-files --quiet
if [ "$?" != 0 ]; then
    COMMIT="$(git rev-parse --short=10 HEAD)-dirty"
else
    COMMIT="$(git rev-parse --short=10 HEAD)"
fi

go build -v -a -ldflags "-X main.commit $COMMIT" github.com/tywkeene/autobd
