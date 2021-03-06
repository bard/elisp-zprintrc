(defvar calc-dispatch-map
  (let ((map (make-keymap)))
    (mapc (lambda (x)
	    (let* ((x-chr (car x))
		   (x-str (char-to-string x-chr))
		   (x-def (cdr x)))
	      (define-key map x-str x-def)
	      (when (string-match "[a-z]" x-str)
		;; Map upper case char to same definition.
		(define-key map (upcase x-str) x-def)
		(unless (string-match "[gmv]" x-str)
		  ;; Map control prefixed char to same definition.
		  (define-key map (vector (list 'control x-chr)) x-def)))
	      (define-key map (format "\e%c" x-chr) x-def)))
          '( ( ?a . calc-embedded-activate )
             ( ?b . calc-big-or-small )
             ( ?c . calc )
             ( ?d . calc-embedded-duplicate )
             ( ?e . calc-embedded )
             ( ?f . calc-embedded-new-formula )
             ( ?g . calc-grab-region )
             ( ?h . calc-dispatch-help )
             ( ?i . calc-info )
             ( ?j . calc-embedded-select )
             ( ?k . calc-keypad )
             ( ?l . calc-load-everything )
             ( ?m . read-kbd-macro )
             ( ?n . calc-embedded-next )
             ( ?o . calc-other-window )
             ( ?p . calc-embedded-previous )
             ( ?q . quick-calc )
             ( ?r . calc-grab-rectangle )
             ( ?s . calc-info-summary )
             ( ?t . calc-tutorial )
             ( ?u . calc-embedded-update-formula )
             ( ?w . calc-embedded-word )
             ( ?x . calc-quit )
             ( ?y . calc-copy-to-buffer )
             ( ?z . calc-user-invocation )
             ( ?\' . calc-embedded-new-formula )
             ( ?\` . calc-embedded-edit )
             ( ?: . calc-grab-sum-down )
             ( ?_ . calc-grab-sum-across )
             ( ?0 . calc-reset )
             ( ?? . calc-dispatch-help )
             ( ?# . calc-same-interface )
             ( ?& . calc-same-interface )
             ( ?\\ . calc-same-interface )
             ( ?= . calc-same-interface )
             ( ?* . calc-same-interface )
             ( ?/ . calc-same-interface )
             ( ?+ . calc-same-interface )
             ( ?- . calc-same-interface ) ))
    map)
  "The key map for starting Calc.")
