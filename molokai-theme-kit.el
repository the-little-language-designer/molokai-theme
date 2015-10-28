(setq-default
 mode-line-format
 (list
  ;; line and column
  " "
  (propertize "%3c" 'face 'font-lock-type-face)
  " "
  (propertize "%4l" 'face 'font-lock-type-face)
  " "
  ;; the buffer name; the file name as a tool tip
  '(:eval
    (propertize "%b" 'face 'font-lock-keyword-face 'help-echo (buffer-file-name)))
  ;; was this buffer modified since the last save?
  '(:eval
    (when (buffer-modified-p)
      (concat " "
              (propertize "modified"
                          'face 'font-lock-preprocessor-face
                          'help-echo "Buffer has been modified"))))
  ;; is this buffer read-only?
  '(:eval
    (when buffer-read-only
      (concat " "
              (propertize "read-only"
                          'face 'font-lock-preprocessor-face
                          'help-echo "Buffer is read-only"))))
  " "

  ;; the current major mode for the buffer.
  '(:eval
    (propertize "%m" 'face 'font-lock-string-face 'help-echo buffer-file-coding-system))
  " "

  ;; relative position, size of file
  (propertize "%I" 'face 'font-lock-constant-face)
  " "
  (propertize "%p" 'face 'font-lock-constant-face)

  ))

(provide 'molokai-theme-kit)
