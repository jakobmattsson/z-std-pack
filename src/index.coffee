Z = require 'z-core'
zBuiltins = require 'z-builtins'
zUnderscore = require 'z-underscore'

mixinAll = (z) ->
  z.mixin(zBuiltins)
  z.mixin(zUnderscore)

zInit = Z.init

Z.init = ->
  newZ = zInit()
  mixinAll(newZ)
  newZ

mixinAll(Z)

module.exports = Z
