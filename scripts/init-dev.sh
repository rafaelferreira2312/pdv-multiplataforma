#!/bin/bash
docker-compose -f docker/docker-compose.yml up -d --build
npm run start:dev
