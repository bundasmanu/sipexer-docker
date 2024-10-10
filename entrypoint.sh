#!/bin/bash

set -e

case "$1" in
    shell)
        exec /bin/bash --login
        ;;
    sipexer)
        echo "Executing custom sipexer command"
        shift
        exec sipexer "$@"
        ;;
    *)
        exec "$@"
        ;;
esac
