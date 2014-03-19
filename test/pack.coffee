it 'has methods from underscore', ->
  Z({ a: 1, b: 3 }).values().should.become [1, 3]

it 'has builtin methods', ->
  Z([1, 2, 3]).join('-').should.become '1-2-3'

it 'has methods from underscore when initialized manually', ->
  newZ = Z.init()
  newZ({ a: 1, b: 3 }).values().should.become [1, 3]
