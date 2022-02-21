;; -*- no-byte-compile: t; -*-
;;; lang/scheme/packages.el

(when (package! geiser :pin "327ff01e5b9c6e019fdd0cb710a4c19082249345")
  (package! macrostep-geiser :pin "f6a2d5bb96ade4f23df557649af87ebd0cc45125")
  (when (featurep! +chez)
    (package! geiser-chez :pin "03da1c17253856d8713bc5a25140cb5002c9c188"))
  (when (featurep! +chibi)
    (package! geiser-chibi :pin "6f59291d8d1dc92ffd3f53f919d8cab4bf50b7d3"))
  (when (featurep! +chicken)
    (package! geiser-chicken :pin "ceab39c89607f55cba88e5606ba5eb37c7df5260"))
  (when (featurep! +gambit)
    (package! geiser-gambit :pin "381d74ca5059b44fe3d8b5daf42214019c6d1a88"))
  (when (featurep! +gauche)
    (package! geiser-gauche :pin "fd52cbaed9b0a0d0f10e87674b5747e5ee44ebc9"))
  (when (featurep! +guile)
    (package! geiser-guile :pin "8dda28f4f1758221f84f5cb5dc5b5ca5fd56caa9")
    (when (featurep! :checkers syntax)
      (package! flycheck-guile
        :recipe (:host github :repo "flatwhatson/flycheck-guile")
        :pin "e46d6e5453dd7471309fae6549445c48e6d8f340")))
  (when (featurep! +kawa)
    (package! geiser-kawa :pin "3d999a33deedd62dae60f3f7cedfbdb715587ea7"))
  (when (featurep! +mit)
    (package! geiser-mit :pin "d17394f577aaa2854a74a1a0039cb8f73378b400"))
  (when (featurep! +racket)
    (package! geiser-racket :pin "22e56ce80389544d3872cf4beb4008fb514b2218")))
