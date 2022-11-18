# Atlantis-test

This repo is for testing Atlantis

export DEFAULT_CONFTEST_VERSION=0.32.1
export NGROK_URL="https://692b-2806-101e-9-21ab-cc38-8362-c80a-2692.ngrok.io"
export GH_USERNAME=albertorm95
export WEBHOOK_SECRET=test
export REPO_ALLOWLIST="github.com/albertorm95/atlantis-test"
export GH_TOKEN=$(pbpaste)

atlantis server \
--atlantis-url="$NGROK_URL" \
--gh-user="$GH_USERNAME" \
--gh-token="$GH_TOKEN" \
--gh-webhook-secret="$WEBHOOK_SECRET" \
--repo-allowlist="$REPO_ALLOWLIST" \
--stats-namespace="atlantis" \
--repo-config=/Users/alberto.rojas/Projects/N26/atlantis-test/server-side.yaml
