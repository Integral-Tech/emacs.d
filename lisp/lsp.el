;;; SPDX-FileCopyrightText: 2024 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-log-io nil) ; if set to true can cause a performance hit

(setq sh-shell-file "bash")

(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'cmake-mode-hook 'lsp)
(add-hook 'meson-mode-hook 'lsp)
(add-hook 'rust-mode-hook 'lsp)
(add-hook 'dart-mode-hook 'lsp)
(add-hook 'sh-mode-hook 'lsp)
(add-hook 'yaml-mode-hook 'lsp)
