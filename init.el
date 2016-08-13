(global-set-key (kbd "C-z") 'set-mark-command)
;; package.el 相關設定
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;;load path
(add-to-list 'load-path (locate-user-emacs-file "rc"))
(add-to-list 'load-path (locate-user-emacs-file "elpa/neotree-20160802.51"))

;; Generic Modes
(require 'rc-diredplus)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
