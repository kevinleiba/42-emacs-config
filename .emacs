;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    .emacs                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: kleiba <kleiba@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/12/28 17:14:11 by kleiba            #+#    #+#              ;
;    Updated: 2017/01/07 16:37:49 by kleiba           ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

; Load general features files
(add-to-list 'load-path "~/.script")
(add-to-list 'auto-mode-alist
               '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist
               '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))
(require 'linum)
(global-linum-mode 1)

(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")
(load "ruby-mode.el")

; default config
(column-number-mode 1)
(line-number-mode 1)
(global-font-lock-mode t)
(setq font-lock-maximum-size nil)

;; Enable mouse support
(unless window-system
(require 'mouse)
(xterm-mouse-mode t)
(global-set-key [mouse-4] '(lambda ()
(interactive)
(scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
(interactive)
(scroll-up 1)))
(defun track-mouse (e))
(setq mouse-sel-mode t)
)

;; Displays date
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)
(setq european-calendar-style t)

;; Show parens immediately
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Configure indent for C
(c-set-offset 'substatement-open 0)
(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode t)

;*******************************************************************************;
