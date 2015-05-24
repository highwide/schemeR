require 'pry-byebug'
require './schemeR.rb'
include SchemeR

definition = \
[:define, [:length, :list], [:if, [:null?, :list],
    0,
    [:+, [:length, [:cdr, :list]], 1]]]

binding.pry
_eval(definition, $global_env)

exp = [:length, [:list, 1, 2]]

puts _eval(exp, $global_env)
