FROM phpmyadmin:latest
HEALTHCHECK CMD curl -Ss http://localhost/robots.txt || exit 1

