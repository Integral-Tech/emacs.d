;;; SPDX-FileCopyrightText: 2024 - 2025 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(load-theme 'wombat t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'default-frame-alist
             '(font . "Sarasa Term SC 11"))

(require 'use-package-ensure)
(setq use-package-always-ensure t)
(setq use-package-always-defer t)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

(load "~/.emacs.d/lisp/lsp.el")
(load "~/.emacs.d/lisp/magit.el")
(load "~/.emacs.d/lisp/gdb.el")
(load "~/.emacs.d/lisp/vterm.el")
(load "~/.emacs.d/lisp/epa.el")
(load "~/.emacs.d/lisp/org-mode.el")
(load "~/.emacs.d/lisp/tex-mode.el")
(load "~/.emacs.d/lisp/po-mode.el")
(load "~/.emacs.d/lisp/erc.el")
