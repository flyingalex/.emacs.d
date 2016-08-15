
(global-set-key (kbd "C-z") 'set-mark-command)
(global-set-key (kbd "M-q") 'emmet-expand-line)
(global-linum-mode t)


;; package.el 相关设置
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; load path
(add-to-list 'load-path (locate-user-emacs-file "rc"))

;; Generic Modes
(require 'rc-diredplus)

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(require 'neotree)
(setq neo-smart-open t)

(require 'web-mode)
;;(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;;(setq web-mode-engines-alist
;;      '(("php"    . "\\.phtml\\'")
;;        ("blade"  . "\\.blade\\."))
;;)


(global-set-key [f8] 'neotree-toggle)
(add-hook 'after-init-hook #'global-flycheck-mode)
