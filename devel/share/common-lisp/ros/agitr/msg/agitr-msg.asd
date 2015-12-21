
(cl:in-package :asdf)

(defsystem "agitr-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pause" :depends-on ("_package_Pause"))
    (:file "_package_Pause" :depends-on ("_package"))
    (:file "Pause" :depends-on ("_package_Pause"))
    (:file "_package_Pause" :depends-on ("_package"))
  ))