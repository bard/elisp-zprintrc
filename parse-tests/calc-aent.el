(defun calc-alg-entry (&optional initial prompt)
  (let* ((calc-dollar-values (mapcar #'calc-get-stack-element
				     (nthcdr calc-stack-top calc-stack)))
	 (calc-dollar-used 0)
	 (calc-plain-entry t)
	 (alg-exp (calc-do-alg-entry initial prompt t 'calc-alg-entry-history)))
    (if (stringp alg-exp)
	(progn
	  (require 'calc-ext)
	  (calc-alg-edit alg-exp))
      (let* ((calc-simplify-mode (if (eq last-command-event ?\C-j)
				     'none
				   calc-simplify-mode))
	     (nvals (mapcar 'calc-normalize alg-exp)))
	(while alg-exp
	  (calc-record (if (featurep 'calc-ext) (car alg-exp) (car nvals))
		       "alg'")
	  (calc-pop-push-record-list calc-dollar-used
				     (and (not (equal (car alg-exp)
						      (car nvals)))
					  (featurep 'calc-ext)
					  "")
				     (list (car nvals)))
	  (setq alg-exp (cdr alg-exp)
		nvals (cdr nvals)
		calc-dollar-used 0)))
      (calc-handle-whys))))
