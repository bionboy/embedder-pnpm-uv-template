Example project getting `@embedder/embedder` to work with `pnpm` and `uv`.

# Setup

```bash
pnpm setup
```

# Manual setup

> see [setup.sh](./setup.sh)

1. Make sure package.json exists with:

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

2. Install embedder

   > Note, pnpm doesn't run post install script
   > avoiding it for now to not install python dependencies globally
   > `pnpm install`

3. Create virtual environment
   `uv venv`

4. Install python dependencies
   `uv pip install -r node_modules/@embedder/embedder/bundle/repomap-python/requirements.txt`

5. Activate virtual environment

   > (python command resolves to the uv venv in this repo)
   > `source .venv/bin/activate`

6. Run embedder
   > After this, you should see it start up without and errors
   > `pnpm run embedder`

> [!NOTE]
> Further testing needed

# Media

## Running setup for the first time

> https://app.warp.dev/block/50Z0uBNnkuH4BYQIcJumxs

```bash
pnpm run setup

> @ setup /Users/bb/github/mine/embedder-pnpm-uv-template
> bash setup.sh

Packages: +12
++++++++++++
Progress: resolved 17, reused 12, downloaded 0, added 12, done

dependencies:
+ @embedder/embedder 1.0.4

╭ Warning ───────────────────────────────────────────────────────────────────────────────────╮
│                                                                                            │
│   Ignored build scripts: @embedder/embedder, @serialport/bindings-cpp.                     │
│   Run "pnpm approve-builds" to pick which dependencies should be allowed to run scripts.   │
│                                                                                            │
╰────────────────────────────────────────────────────────────────────────────────────────────╯

Done in 1.4s using pnpm v10.14.0
Using CPython 3.13.5
Creating virtual environment at: .venv
Activate with: source .venv/bin/activate
Using Python 3.13.5 environment at: /Users/bb/github/mine/exploration-embedder/.venv
Audited 7 packages in 3ms
Setup complete
Run 'pnpm run embedder' to start the embedder
```

## Running embedder for the first time after setup

> https://app.warp.dev/block/WKcnxtBtJnKoJo4yPLMfKD

```bash
pnpm run embedder

> @ embedder /Users/bb/github/mine/embedder-pnpm-uv-template
> embedder


███╗    ███████╗███╗   ███╗██████╗ ███████╗██████╗ ██████╗ ███████╗██████╗     ███╗
██╔╝    ██╔════╝████╗ ████║██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗    ╚██║
██║     █████╗  ██╔████╔██║██████╔╝█████╗  ██║  ██║██║  ██║█████╗  ██████╔╝     ██║
██║     ██╔══╝  ██║╚██╔╝██║██╔══██╗██╔══╝  ██║  ██║██║  ██║██╔══╝  ██╔══██╗     ██║
███╗    ███████╗██║ ╚═╝ ██║██████╔╝███████╗██████╔╝██████╔╝███████╗██║  ██║    ███║
╚══╝    ╚══════╝╚═╝     ╚═╝╚═════╝ ╚══════╝╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚══╝


Add documentation to the .embedder/documents/ directory for better results.


INFO: Codebase indexing complete! Indexed 6 files.

╭───────────╮
│  > /quit  │
╰───────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│                                                                                                                          │
│  Session Stats                                                                                                           │
│                                                                                                                          │
│  Performance                                                                                                             │
│  Total Time:                 2m 47s                                                                                      │
│  Active Time:                0s                                                                                          │
│    » API Time:               0s (0.0%)                                                                                   │
│    » Tool Time:              0s (0.0%)                                                                                   │
│                                                                                                                          │
│                                                                                                                          │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
```
