(defun calc-derivative (var num)
  (interactive "sDifferentiate with respect to: \np")
  (calc-slow-wrapper
   (when (< num 0)
     (error "Order of derivative must be positive"))
   (let ((func (if (calc-is-hyperbolic) 'calcFunc-tderiv 'calcFunc-deriv))
	 n expr)
     (if (or (equal var "") (equal var "$"))
	 (setq n 2
	       expr (calc-top-n 2)
	       var (calc-top-n 1))
       (setq var (math-read-expr var))
       (when (eq (car-safe var) 'error)
	 (error "Bad format in expression: %s" (nth 1 var)))
       (setq n 1
	     expr (calc-top-n 1)))
     (while (>= (setq num (1- num)) 0)
       (setq expr (list func expr var)))
     (calc-enter-result n "derv" expr))))
