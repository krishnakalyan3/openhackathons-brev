#!/usr/bin/env bash

echo "YOUR-TOKEN" | docker login nvcr.io --username '$oauthtoken' --password-stdin
docker pull nvcr.io/nim/meta/llama3-8b-instruct:latest
pip install uv
uv pip install -r requirements.txt
curl -LsSf https://hf.co/cli/install.sh | bash
hf auth login
hf download meta-llama/Meta-Llama-3-8B
