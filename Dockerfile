FROM python:3.14-slim

# System deps needed for git installs and Playwright browser deps install
RUN apt-get update \
 && apt-get install -y --no-install-recommends git ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# uv (package manager)
RUN pip install --no-cache-dir uv

# Install Playwright
RUN python -m pip install --no-cache-dir "playwright==1.57.0"
