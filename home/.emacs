;; -*- Emacs-Lisp -*-
;; import the master.emacs file
(defconst master-dir (getenv "LOCAL_ADMIN_SCRIPTS"))
(defconst engshare-master (getenv "ADMIN_SCRIPTS"))
(if (file-exists-p (expand-file-name "master.emacs" master-dir))
    (load-library (expand-file-name "master.emacs" master-dir))
  (load-library (expand-file-name "master.emacs" engshare-master)))
