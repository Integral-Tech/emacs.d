(setq org-hide-emphasis-markers t)
(setq org-startup-indented t)
(setq org-startup-with-inline-images t)
(setq org-image-actual-width 500)

(with-eval-after-load 'org (global-org-modern-mode))
(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)))
