require 'pry-byebug'
require './schemeR.rb'
include SchemeR

exp = \
[:let, [[:x, 3]],
  [:let, [[:fun, [:lambda, [:y], [:+, :x, :y]]]],
    [:+, [:fun, 1], [:fun, 2]]]]

puts _eval(exp, $global_env)
