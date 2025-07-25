;;; SPDX-FileCopyrightText: 2024 - 2025 Integral <integral@member.fsf.org>
;;;
;;; SPDX-License-Identifier: GPL-3.0-or-later

(setq auto-mode-alist
      (cons '("\\.po\\'\\|\\.po\\." . po-mode) auto-mode-alist))
(autoload 'po-mode "po-mode" "Major mode for translators to edit PO files" t)

(defun po-wrap ()
  "Filter current po-mode buffer through `msgcat' tool to wrap all lines."
  (interactive)
  (if (eq major-mode 'po-mode)
      (let ((tmp-file (make-temp-file "po-wrap."))
	    (tmp-buf (generate-new-buffer "*temp*")))
	(unwind-protect
	    (progn
	      (write-region (point-min) (point-max) tmp-file nil 1)
	      (if (zerop
		   (call-process
		    "msgcat" nil tmp-buf t (shell-quote-argument tmp-file)))
		  (let ((saved (point))
			(inhibit-read-only t))
		    (delete-region (point-min) (point-max))
		    (insert-buffer tmp-buf)
		    (goto-char (min saved (point-max))))
		(with-current-buffer tmp-buf
		  (error (buffer-string)))))
	  (kill-buffer tmp-buf)
	  (delete-file tmp-file)))))
