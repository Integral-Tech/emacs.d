;;; SPDX-FileCopyrightText: 2024 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   '(company-capf company-semantic company-clang company-cmake
		  company-files
		  (company-dabbrev-code company-gtags company-etags
					company-keywords)
		  company-oddmuse company-dabbrev))
 '(custom-enabled-themes '(wombat))
 '(gdb-many-windows t)
 '(global-company-mode t)
 '(package-selected-packages
   '(closql cmake-mode company forge ghub lsp-treemacs magit-delta
	    magit-section meson-mode org-modern rust-mode with-editor
	    yaml-mode))
 '(warning-suppress-log-types '((comp))))

(setq epa-pinentry-mode 'loopback)

(add-hook 'emacs-startup-hook 'treemacs)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'default-frame-alist
             '(font . "Sarasa Term SC 11"))

(load "~/.emacs.d/lisp/lsp.el")
(load "~/.emacs.d/lisp/magit.el")
(load "~/.emacs.d/lisp/forge.el")
(load "~/.emacs.d/lisp/org-mode.el")
(load "~/.emacs.d/lisp/erc.el")
(load "~/.emacs.d/lisp/po-mode.el")
