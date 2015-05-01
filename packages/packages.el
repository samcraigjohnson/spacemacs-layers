;;; packages.el --- packages Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar packages-packages
  '(
    clojure-mode
    yaml-mode
    queue
    cider
    flycheck
    web-mode
    ;; package packagess go here
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar packages-excluded-packages '()
  "List of packages to exclude.")

(defun packages/init-clojure-mode ()
  (autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
  (add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

  )

(defun packages/init-web-mode ()
  (require 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
  )

(defun packages/init-flycheck ()
  (add-hook 'after-init-hook #'global-flycheck-mode)
)
;; For each package, define a function packages/init-<package-packages>
;;
;; (defun packages/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
