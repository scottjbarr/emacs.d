; Machine specific - start the server, blow away the socket if it errors and retry
(condition-case nil
  (server-start)
  ((error nil)
    (call-process "/bin/sh" nil nil nil "-c" "find /var/folders -name server 2>/dev/null | grep emacs501 | xargs rm")
    (server-start))
  )