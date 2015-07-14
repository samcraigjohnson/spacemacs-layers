;;; myconfig.el --- myconfig Layer myconfig File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sam Johnson
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq myconfig-packages
  '(
    clojure-mode
    yaml-mode
    queue
    cider
    flycheck
    web-mode
    js2-mode
    sass-mode
    scala-mode
    erlang
    jinja2-mode
    ))

(setq myconfig-excluded-packages '())

;; (defun myconfig/init-web-mode ()
;;   (use-package web-mode
;;     :init
;;     (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode)))
;;   )

;; (defun myconfig/init-flycheck ()
;;   (add-hook 'after-init-hook #'global-flycheck-mode)
;;   (use-package flycheck
;;     :init
;;     (setq-default flycheck-disabled-checkers
;;                   (append flycheck-disabled-checkers
;;                           '(javascript-jshint)))

;;     (flycheck-add-mode 'javascript-eslint 'web-mode)

;;     (setq-default flycheck-disabled-checkers
;;                   (append flycheck-disabled-checkers
;;                           '(json-jsonlist)))))

;; For each package, define a function myconfig/init-<package-myconfig>
;;
;; (defun myconfig/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
