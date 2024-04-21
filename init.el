(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   '(company-capf company-semantic company-clang company-cmake company-files
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-dabbrev))
 '(custom-enabled-themes '(wombat))
 '(gdb-many-windows t)
 '(global-company-mode t)
 '(package-selected-packages
   '(org-modern forge lsp-treemacs ccls projectile magit rust-mode company))
 '(warning-suppress-log-types '((comp))))

(setq epa-pinentry-mode 'loopback)

(add-hook 'emacs-startup-hook 'treemacs)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'default-frame-alist
             '(font . "Sarasa Term SC 11"))

(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "lsp")
(load "forge")
(load "org-mode")
(load "erc")
(load "po-mode")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
