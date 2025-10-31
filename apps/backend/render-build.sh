#!/bin/bash
set -e

cd apps/backend

# Install dependencies without freezing lockfile
pnpm install --no-frozen-lockfile

# Generate Prisma Client explicitly
npx prisma generate --schema=./prisma/schema.prisma

# Build backend
pnpm run build

