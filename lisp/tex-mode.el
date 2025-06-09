(use-package pdf-tools)

(use-package auctex
  :config
  (setq TeX-engine 'xetex)
  (setq TeX-view-program-selection '((output-pdf "PDF Tools")))
  (add-hook 'TeX-after-compilation-finished-functions 'TeX-revert-document-buffer))
