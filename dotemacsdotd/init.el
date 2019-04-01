;; 
;; Package
;; 
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(package-refresh-contents)

;; Intero
;; (package-install 'intero)
;; (add-hook 'haskell-mode-hook 'intero-mode)

;;
;; auto-save-buffers
;;

;; (require 'auto-save-buffers-enhanced)
;; (setq auto-save-buffers-enhanced-quiet-save-p t)
;; (auto-save-buffers-enhanced t)

;;
;; magit
;;

;; (global-set-key (kbd "C-x g") 'magit-status)

;;
;; markdown-mode
;;

;; (autoload 'markdown-mode "markdown-mode"
;;    "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; (autoload 'gfm-mode "markdown-mode"
;;    "Major mode for editing GitHub Flavored Markdown files" t)
;; (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;;
;; SKK
;;

;; (setq skk-cdb-large-jisyo "/home/nobsun/SKK-JISYO.L.cdb")
;; (setq-default skk-kutouten-type 'en)
;; (global-set-key (kbd "C-x C-j") 'skk-mode)

;; 
;; YaTeX
;;

;; (setq auto-mode-alist
;;       (cons '("\\.tex$" . yatex-mode) auto-mode-alist))
;; (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode." t)
;; (setq YaTeX-kanji-code 4)
;; (add-hook 'yatex-mode-hook
;; 	  '(lambda () (auto-fill-mode 0)))

;;
;; web-mode
;;
;; .js, .jsx を web-mode で開く
;; (add-to-list 'auto-mode-alist '("\\.js[x]?$" . web-mode))

;; ;; 拡張子 .js でもJSX編集モードに
;; (setq web-mode-content-types-alist
;;       '(("jsx" . "\\.js[x]?\\'")))

;; ;; インデント
;; (add-hook 'web-mode-hook
;;           '(lambda ()
;;              (setq web-mode-attr-indent-offset nil)
;;              (setq web-mode-markup-indent-offset 2)
;;              (setq web-mode-css-indent-offset 2)
;;              (setq web-mode-code-indent-offset 2)
;;              (setq web-mode-sql-indent-offset 2)
;;              (setq indent-tabs-mode nil)
;;              (setq tab-width 2)
;;           ))

;;
;; Scrapbox
;;
;;; Create New Page with Selected Text
;;; or Insert Selected Text to the Existing Page's Last Row

;; (require 'url-util)
;; (defun my-post-scrapbox(beg end str1 str2)
;;   (interactive "r\nsProjectName: \nsPageName: ")
;;   (if mark-active
;;       (progn
;; 	(let* ((body-string (buffer-substring-no-properties beg end))
;; 	       (proj-name str1)
;; 	       (page-name str2))
;; 	  (browse-url
;; 	   (concat "https://scrapbox.io/" proj-name "/" page-name
;; 		   "?body=" body-string))))
;;     (message "No Region Selected")))

;; ;;; Show the Page Body
;; (defun my-get-scrapbox (project-name page-name)
;;   (interactive "sProjectName: \nsPageName: ")
;;   (async-shell-command
;;    (concat "~/.local/bin/get_scrapbox_page.sh " project-name " " page-name)))

;; ;;; Show Page Titles
;; (defun my-index-scrapbox ()
;;   (interactive)
;;   (async-shell-command "~/.local/bin/get_scrapbox_page_titles.sh"))

;;
;; Misc
;;

;; (mouse-wheel-mode t)
(global-font-lock-mode t)
(global-linum-mode t)
(auto-compression-mode t)
(tool-bar-mode 0)
(menu-bar-mode 1)

(setq ring-bell-function 'ignore)
(setq line-number-mode t)
(setq column-number-mode t)
(setq frame-title-format (concat "%b (%f)"))
(setq next-line-add-newlines nil)
(setq inhibit-startup-message t)
(put 'downcase-region 'disabled nil)
