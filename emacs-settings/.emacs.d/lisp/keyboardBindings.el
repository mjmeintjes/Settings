

;; Some Mac-friendly key counterparts
(global-set-key [(meta s)] 'save-buffer)
(global-set-key [(meta z)] 'undo)
(global-set-key [(meta c)] 'kill-ring-save)
(global-set-key [(meta shift v)] 'clipboard-yank)

;; Keyboard Overrides
(define-key text-mode-map [(meta s)] 'save-buffer)
(global-set-key [(control shift left)] 'previous-buffer)
(global-set-key [(control shift right)] 'next-buffer)
(global-set-key [(control o)] 'other-window)
(global-set-key [(meta N)] 'cleanup-buffer)


;; Align your code in a pretty way.
(global-set-key [(control x)(\\)] 'align-regexp)


;; Use regex searches by default.
(global-set-key [(control s)] 'isearch-forward-regexp)
(global-set-key [(control r)] 'isearch-backward-regexp)
(global-set-key [(control meta s)] 'isearch-forward)
(global-set-key [(control meta r)] 'isearch-backward)
(global-set-key [(meta %)] 'query-replace-regexp)
(global-set-key [(control meta %)] 'query-replace)


;; Jump to a definition in the current file. (This is awesome.)
(global-set-key [(control x)(control i)] 'ido-imenu)

;; File finding
(global-set-key [(control x)(meta f)] 'ido-find-file-other-window)
(global-set-key [(control x)(control meta f)] 'find-file-in-project)
(global-set-key [(control x)(f)] 'recentf-ido-find-file)
(global-set-key [(control x)(control b)] 'ibuffer)

;; Start a regular shell 
(global-set-key [(control x)(control m)] 'shell)

;; Help should search more than just commands
(global-set-key [(control h)(a)] 'apropos)

;; Should be able to eval-and-replace anywhere.
(global-set-key [(control c)(e)] 'eval-and-replace)


;; ;; This is a little hacky since VC doesn't support git add internally
;; (eval-after-load 'vc
;;   (define-key vc-prefix-map "i" '(lambda () (interactive)
;;                                    (if (not (eq 'Git (vc-backend buffer-file-name)))
;;                                        (vc-register)
;;                                      (shell-command (format "git add %s" buffer-file-name))
;;                                      (message "Staged changes.")))))

;; ;; Activate occur easily inside isearch
;; (define-key isearch-mode-map (kbd "C-o")
;;   (lambda () (interactive)
;;     (let ((case-fold-search isearch-case-fold-search))
      ;; (occur (if isearch-regexp isearch-string (regexp-quote isearch-string))))))


(provide 'keyboardBindings)