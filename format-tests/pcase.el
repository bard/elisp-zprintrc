(pcase run-command-completion-method
  ('helm (run-command--helm))
  (_ (error "[run-command] Unrecognized completion method: %s"
            run-command-completion-method)))
