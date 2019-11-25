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
```lisp
(require 'lsp-nim)
```
## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
