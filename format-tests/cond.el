(cond
 ((eq arg '-) (comment-kill nil))
 (arg
  (comment-normalize-vars)
  (save-excursion
    (beginning-of-line)
    (comment-search-backward)
    (beginning-of-line)
    (goto-char (comment-search-forward (line-end-position)))
    (setq comment-column (current-column))
    (message "Comment column set to %d" comment-column))
  (comment-indent))
 (t (setq comment-column (current-column))
    (message "Comment column set to %d" comment-column)))
