(setq erc-autojoin-channels-alist
      '(("Libera.Chat" "#emacs" "#erc" "#parabola" "#guix" "#guix-offtopic")))

(defun erc-login ()
  (interactive)
  (erc-tls :server "irc.libera.chat" :port 6697
           :nick "Integral_Tech"
           :user "Integral_Tech"
           :client-certificate
           '("Documents/libera-irc/libera.key"
           "Documents/libera-irc/libera.pem")))
