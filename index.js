import React from "react";
import ReactDOM from "react-dom";

import Main from "./output/Main";

function main() {
  Main.main("HIIII")()
}

if (module.hot) {
  module.hot.accept(function() {
    console.log("running main again");
    main();
  });
}

console.log("starting");
main();
