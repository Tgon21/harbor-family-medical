#!/usr/bin/env bash
#
# Lunaris Medical Clinic — static site deploy (gen-purpose Hetzner server).
# Deploys ONE environment (prod or beta) from its git branch into its own dir.
# Caddy serves the directory live, so there is no build or process reload.
#
#   prod -> /srv/lunaris/prod  tracks origin/main  (lunarisclinic.com,      Caddy :8080)
#   beta -> /srv/lunaris/beta  tracks origin/dev   (beta.lunarisclinic.com, Caddy :8081)
#
# Usage (on the server, or via the GitHub Actions deploy workflow):
#   bash deploy/deploy.sh prod
#   bash deploy/deploy.sh beta
#
set -euo pipefail
ENV_NAME="${1:-}"
case "$ENV_NAME" in
  prod) APP_DIR="/srv/lunaris/prod"; BRANCH="main" ;;
  beta) APP_DIR="/srv/lunaris/beta"; BRANCH="dev"  ;;
  *) echo "ERROR: first argument must be 'prod' or 'beta' (got: '${ENV_NAME}')" >&2; exit 2 ;;
esac
echo "==> Deploying '$ENV_NAME' from origin/$BRANCH into $APP_DIR"
cd "$APP_DIR"
git fetch --prune origin
git checkout "$BRANCH"
git reset --hard "origin/$BRANCH"
echo "==> Done: '$ENV_NAME' is live (branch $BRANCH). Caddy serves it directly."
