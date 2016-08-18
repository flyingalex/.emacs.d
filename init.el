
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-z") 'set-mark-command)
(global-set-key (kbd "M-q") 'emmet-expand-line)
;;(global-set-key (kbd "M-S") 'windmove-up)
;;(global-set-key (kbd "M-X") 'windmove-down)
;;(global-set-key (kbd "M-C") 'windmove-right)
;;(global-set-key (kbd "M-Z") 'windmove-left)
(global-set-key [f8] 'neotree-toggle)
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
(require 'js2-mode)

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

;;find-file-in-project
(autoload 'find-file-in-project "find-file-in-project" nil t)
(autoload 'find-file-in-project-by-selected "find-file-in-project" nil t)
(autoload 'find-directory-in-project-by-selected "find-file-in-project" nil t)
(autoload 'ffip-show-diff "find-file-in-project" nil t)
(autoload 'ffip-save-ivy-last "find-file-in-project" nil t)
(autoload 'ffip-ivy-resume "find-file-in-project" nil t)

(add-to-list 'load-path (locate-user-emacs-file "rc/helm"))
(require 'helm-config)
(helm-mode 1)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x
;;helm-mini
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h o") 'helm-occur)

(add-hook 'after-init-hook #'global-flycheck-mode)
