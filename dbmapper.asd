;;;; dbmapper.asd

(asdf:defsystem #:dbmapper
  :description "A package for finding potential join candidates between tables in a database"
  :author "Jesse Irwin <jesse.irwin11@gmail.com>"
  :license  "MIT License"
  :version "0.0.1"
  :serial t
  :depends-on (#:clsql #:clsql-sqlite3)
  :components ((:file "package")
	       (:file "sql")
               (:file "dbmapper")))
