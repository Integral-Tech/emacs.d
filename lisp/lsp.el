;;; SPDX-FileCopyrightText: 2024 - 2025 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(use-package cmake-mode)
(use-package rust-mode)
(use-package yaml-mode)

(use-package lsp-mode
  :hook (asm-mode c-mode c++-mode cmake-mode rust-mode sh-mode yaml-mode)
  :config
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-log-io nil) ; if set to true can cause a performance hit
  (setq sh-shell-file "bash"))

(use-package lsp-treemacs :hook (emacs-startup . treemacs))

(use-package company
  :hook (prog-mode text-mode)
  :config
  (setq company-backends
    '(company-capf company-semantic company-clang company-cmake company-files
     (company-dabbrev-code company-gtags company-etags company-keywords)
     company-oddmuse company-dabbrev)))
