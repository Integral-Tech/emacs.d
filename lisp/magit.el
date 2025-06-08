;;; SPDX-FileCopyrightText: 2024 - 2025 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(use-package magit-delta :hook magit-mode)

(use-package forge
   :config
   (setq forge-alist
    '(("github.com" "api.github.com" "github.com" forge-github-repository)
      ("gitlab.com" "gitlab.com/api/v4" "gitlab.com" forge-gitlab-repository)
      ("invent.kde.org" "invent.kde.org/api/v4" "invent.kde.org" forge-gitlab-repository)
      ("codeberg.org" "codeberg.org/api/v1" "codeberg.org" forge-gitea-repository))))
