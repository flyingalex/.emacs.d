(global-set-key (kbd "C-z") 'set-mark-command)
;; package.el 相關設定
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;;load path
(add-to-list 'load-path (locate-user-emacs-file "rc"))

;; Generic Modes
(require 'rc-diredplus)
