module Main where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class.Console (log)
import Effect.Exception (throw)
import React.Basic.DOM (render)
import React.Basic.DOM as R
import React.Basic.Events (handler_)
import React.Basic.Hooks (Component, component, useState, (/\))
import React.Basic.Hooks as React
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

mkCounter :: Component Int
mkCounter = do
  component "Counter" \initialValue -> React.do
    counter /\ setCounter <- useState initialValue
    pure
      $ R.button
          { onClick:
              handler_ do
                setCounter (_ + 1)
          , children:
              [ R.text $ "Increment: " <> show counter ]
          }

main :: String -> Effect Unit
main foo = do
  _ <- log foo
  doc <- document =<< window
  maybeContainer <- getElementById "app" $ toNonElementParentNode doc
  case maybeContainer of
    Nothing -> throw "Root element not found."
    Just container -> do
      app <- mkCounter
      render (app 0) container
