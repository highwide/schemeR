require 'pry-byebug'
require './schemeR.rb'
include SchemeR

exp = \
  [:letrec,
    [[:fact,
      [:lambda, [:n], [:if, [:<, :n, 1], 1, [:*, :n, [:fact, [:-, :n, 1]]]]]]],
    [:fact, 3]]

binding.pry
puts _eval(exp, $global_env)
