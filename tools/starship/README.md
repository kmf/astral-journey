# astral-journey for Starship

## Install

```bash
cp astral-blackhole.toml ~/.config/starship.toml
```

Or merge into your existing config — the key bits are the `[palettes.astral-blackhole]` table and `palette = "astral-blackhole"` at the top.

## Switch to latte

Change the top-level palette line:

```toml
palette = "astral-supernova"
```

Both palette tables are included in the same config file.

## What it shows

```
✦ ~/projects/astral-journey   main !2 +1 ⇡1  ansible 2.17  go 1.23  42s
❯
```

- Astral spark ✦ as prompt identifier
- Directory in astral-azure, truncated to 3 segments
- Git branch in violet with status in yellow
- Language environments (Ansible, Go, Rust, Python, Nix) each in a distinctastralaccent
- Kubernetes context in teal (disabled by default — set `disabled = false`)
- Command duration in muted when > 2s
- Success/error prompt symbol (`❯`) in yellow/red
