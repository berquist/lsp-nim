;;; lsp-nim.el --- Nim support for lsp-mode -*- lexical-binding: t; -*-
;;
;;; Copyright (C) 2019  Eric Berquist
;;
;; Author: Eric Berquist <eric.berquist@gmail.com>
;; Version: 0.0.1
;; Keywords: extensions
;; URL: https://github.com/berquist/lsp-nim
;; Package-Requires: ((emacs "25.1") (lsp-mode "6.0"))
;;
;; This file is not a part of GNU Emacs.
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; Emacs mode for calling the Nim language server from https://github.com/PMunch/nimlsp

;;; Code:

(require 'lsp-mode)

;; TODO the whole thing crashes when creating a buffer that should correspond
;; to a file but the file doesn't exist yet.

(add-to-list 'lsp-language-id-configuration '(nim-mode . "nim"))

(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection "nimlsp")
  :major-modes '(nim-mode)
  :server-id 'nimlsp))

(provide 'lsp-nim)

;;; lsp-nim.el ends here
