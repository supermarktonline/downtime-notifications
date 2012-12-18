#!/bin/bash
case $1 in
enable)
  rm index.html
  ln -s maintenance.html index.html
  ;;
disable)
  rm index.html
  ln -s problem.html index.html
  ;;
*)
  echo "Usage: enable | disabe. Enable: switch our normal error page to one that says that we are aware of it and its on purpose"
  ;;
esac