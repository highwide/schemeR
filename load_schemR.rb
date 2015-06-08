require 'pry-byebug'
require './schemeR.rb'
include SchemeR

binding.pry
definition = \
parse('(define (fib n) (if (< n 2) n (+ (fib (- n 1)) (fib (- n 2)))))')

_eval(definition, $global_env)

exp = parse('(fib 10)')

puts _eval(exp, $global_env)
