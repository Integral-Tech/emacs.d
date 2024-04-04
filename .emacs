(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   '(company-capf company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-dabbrev))
 '(custom-enabled-themes '(wombat))
 '(gdb-many-windows t)
 '(global-company-mode t)
 '(lsp-dired-mode t nil (lsp-dired))
 '(package-selected-packages
   '(org-modern lsp-treemacs ccls projectile-ripgrep projectile magit rust-mode company))
 '(warning-suppress-log-types '((comp))))

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-log-io nil) ; if set to true can cause a performance hit

(setq org-hide-emphasis-markers t)
(setq org-startup-with-inline-images t)
(setq org-image-actual-width 500)

(add-hook 'c-mode-hook 'lsp)
(add-hook 'rust-mode-hook 'lsp)
(add-hook 'emacs-startup-hook 'treemacs)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'default-frame-alist
             '(font . "Sarasa Term SC 11"))

(with-eval-after-load 'org (global-org-modern-mode))

(defun erc-login ()
  (interactive)
  (erc-tls :server "irc.libera.chat" :port 6697
           :nick "Integral_Tech"
           :user "Integral_Tech"
           :client-certificate
           '("/home/integral/Documents/libera-irc/libera.key"
           "/home/integral/Documents/libera-irc/libera.pem")))

(setq erc-autojoin-channels-alist
      '(("Libera.Chat" "#emacs" "#erc" "#parabola" "#guix" "#guix-offtopic")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
