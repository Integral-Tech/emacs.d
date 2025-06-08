;;; SPDX-FileCopyrightText: 2024 - 2025 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(use-package org-modern
  :hook ((org-mode . org-modern-mode)
         (org-agenda-finalize . org-modern-agenda))
  :config
  (setq org-hide-emphasis-markers t)
  (setq org-startup-indented t)
  (setq org-startup-truncated nil)
  (setq org-startup-with-inline-images t)
  (setq org-image-actual-width 500)
  (org-babel-do-load-languages
    'org-babel-load-languages
      '((C . t))))
