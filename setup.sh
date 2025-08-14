# 1. Make sure package.json exists with:
# ```json
# {
#   "scripts": {
#     "embedder": "embedder"
#   },
#   "dependencies": {
#     "@embedder/embedder": "^1.0.4"
#   }
# }
# ```

# 2. Install embedder
# > Note, pnpm doesn't run post install script
# > avoiding it for now to not install python dependencies globally
pnpm install

# 3. Create virtual environment
uv venv

# 4. Install python dependencies
uv pip install -r node_modules/@embedder/embedder/bundle/repomap-python/requirements.txt

# 5. Activate virtual environment
# > (python command resolves to the uv venv in this repo)
source .venv/bin/activate

# 6. Run embedder
# After this, you should see it start up without and errors
echo "Setup complete"
echo "Run 'pnpm run embedder' to start the embedder"

# [!NOTE] > Further testing needed