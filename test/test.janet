(import "/src/judge-testing")
(use judge)

(deftest "more fibonacci numbers"
  (test (judge-testing/fibonacci 20)))