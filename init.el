
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-z") 'set-mark-command)
(global-set-key (kbd "M-q") 'emmet-expand-line)
;;(global-set-key (kbd "M-S") 'windmove-up)
;;(global-set-key (kbd "M-X") 'windmove-down)
;;(global-set-key (kbd "M-C") 'windmove-right)
;;(global-set-key (kbd "M-Z") 'windmove-left)
(global-set-key [f8] 'neotree-toggle)
(global-linum-mode t)
(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)
;;switch tab to 4 spaces
(setq-default tab-width 4)
(setq-default tab-always-indent t)

;; package.el 相关设置
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; load path
(add-to-list 'load-path (locate-user-emacs-file "rc"))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;https://pawelbx.github.io/emacs-theme-gallery/
(load-theme 'monokai t)

;;auto complete mode
(require 'auto-complete)
(global-auto-complete-mode t)

;; Generic Modes
(require 'rc-diredplus)

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(require 'neotree)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-element-highlight t)

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
;;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x
;;helm-mini
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(global-set-key (kbd "C-c h o") 'helm-occur)
;;helm projectule
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(global-set-key (kbd "C-x C-f") 'helm-projectile)
(global-set-key (kbd "C-c p f") 'helm-projectile-find-file)
(global-set-key (kbd "C-c p p") 'helm-projectile-switch-project)
(global-set-key (kbd "C-c p s g") 'helm-projectile-grep)
(global-set-key (kbd "C-x g") 'magit-status)


(add-hook 'after-init-hook #'global-flycheck-mode)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e521c25ef12b83556b1055b8e49c9c33afd991eef7774519644561a963e7f4aa" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
