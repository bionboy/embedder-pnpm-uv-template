Example project getting `@embedder/embedder` to work with `pnpm` and `uv`.

# Setup

```bash
pnpm setup
```

# Manual setup

1. `pnpm add @embedder/embedder`
   > Note, didn't run post install script
2. create package.json with:

```json
{
  "scripts": {
    "embedder": "embedder"
  },
  "dependencies": {
    "@embedder/embedder": "^1.0.4"
  }
}
```

3. `uv venv`
4. `uv pip install -r path/to/requirements.txt`
5. `source .venv/bin/activate`
6. `pnpm run embedder`

After this, you should see it start up without and errors

> Further testing needed
