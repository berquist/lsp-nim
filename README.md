This isn't needed anymore, since `nimlsp` is now a part of [`lsp-mode`](https://github.com/emacs-lsp/lsp-mode)!

# lsp-nim

`lsp-mode` client for Nim: https://github.com/PMunch/nimlsp/

## Installation

### Language server

Assuming a Nim toolchain is installed (version >= 1.0.0), run
```bash
nimble install nimlsp
```
in a terminal, then make sure `nimlsp` is available on your `PATH`.

### Emacs mode

After downloading into your `load-path`:
```emacs-lisp
(require 'lsp-nim)
```
## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
