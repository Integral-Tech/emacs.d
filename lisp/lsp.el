;;; SPDX-FileCopyrightText: 2024 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(use-package lsp-treemacs
  :hook (emacs-startup . treemacs)
  :config
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-log-io nil) ; if set to true can cause a performance hit
  (setq sh-shell-file "bash"))

(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'sh-mode-hook 'lsp)

(use-package cmake-mode :hook (cmake-mode . lsp))
(use-package rust-mode :hook (rust-mode . lsp))
(use-package yaml-mode :hook (yaml-mode . lsp))

(use-package
  company
  :hook prog-mode
  :config
  (setq company-backends
    '(company-capf company-semantic company-clang company-cmake company-files
     (company-dabbrev-code company-gtags company-etags company-keywords)
     company-oddmuse company-dabbrev)))

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
