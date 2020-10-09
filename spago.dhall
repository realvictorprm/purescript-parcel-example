{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-parcel-example"
, dependencies =
  [ 
    "console"
  , "debug"
  , "effect"
  , "filterable"
  , "formatters"
  , "milkis"
  , "now"
  , "psci-support"
  , "react-basic-hooks"
  , "simple-json"
  , "spec-discovery"
  , "undefined-or"
  , "react-basic"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
