# Astral Journey for Emacs

Two variants: **astral-blackhole** (dark) and **astral-supernova** (light).

Covers core faces, font-lock, org-mode, markdown-mode, diff, magit, flycheck/flymake, company, which-key, and show-paren.

## Install

### Manual

Copy the theme files into your custom theme directory:

```bash
cp editors/emacs/astral-*-theme.el ~/.emacs.d/themes/
```

Then in your init file:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'astral-blackhole t)
```

### use-package + straight

```elisp
(use-package astral-blackhole-theme
  :straight (:host github :repo "kmf/astral-journey" :files ("editors/emacs/*.el"))
  :config
  (load-theme 'astral-blackhole t))
```

### From the repo clone

```bash
ln -s ~/.local/share/astral-journey/editors/emacs ~/.emacs.d/themes/astral
```
