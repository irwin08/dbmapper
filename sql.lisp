
(in-package :cl-user)
(ql:quickload '("clsql" "cl-sqlite3"))


(defun connect-to-db (name)
  (connect "test" :database-type :sqlite))

(defun column-names (table)
  (multiple-value-bind (row fields) (query (format nil "SELECT * FROM ~A LIMIT 1" "test"))
    (first (last (list row fields) 1))))

(defun get-list-of-columns (table row-limit)
  (loop for col-name in (column-names table)
	do ))
