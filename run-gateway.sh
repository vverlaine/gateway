#!/bin/bash
set -e
cd "$(dirname "$0")"

# Cargar variables desde .env.jwt (una carpeta arriba)
source ../.env.jwt

echo "[Gateway] Usando secreto de $(pwd)"
echo -n "$APP_JWT_SECRET" | wc -c

export APP_JWT_SECRET

./gradlew bootRun