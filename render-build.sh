#!/bin/bash
set -e

echo "🔧 Building backend for Render..."

# Move into backend folder
cd apps/backend

# Install deps without lockfile freeze (Render often has mismatched pnpm-lock.yaml)
pnpm install --no-frozen-lockfile

# Generate Prisma client
npx prisma generate --schema=./prisma/schema.prisma

# Build TypeScript
pnpm run build

echo "✅ Backend build completed!"
