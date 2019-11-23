;;; lsp-nim.el --- The lsp-mode client for https://github.com/PMunch/nimlsp

;;; Commentary:

;;; Code:

(require 'lsp-mode)

(add-to-list 'lsp-language-id-configuration '(nim-mode . "nim"))

(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection "nimlsp")
  :major-modes '(nim-mode)
  :server-id 'nimlsp))

(provide 'lsp-nim)

;;; lsp-nim.el ends here
