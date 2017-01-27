# what does the following error tell us?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'


ANSWER:
we provided the incorrect number of arguments. the method was expecting 2 but we
only provided 1.  passing in to few is a problem while passed more than needed is not.
extra args above number of parameters are ignored.
