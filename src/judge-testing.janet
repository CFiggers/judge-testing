# Uncomment to use `janet-lang/spork` helper functions.
# (use spork)

(use judge)

(defn fibonacci [n]
  (var a 0)
  (var b 1)
  (var c 0)
  (case n
    0 0
    1 1
    (do (for i 0 (dec n)
             (set c (+ a b))
             (set a b)
             (set b c))
        b)))

(deftest "fibonacci"
  (test (fibonacci 5) 5)
  (test (fibonacci 10) 55)
  (test (fibonacci 15) 610))
