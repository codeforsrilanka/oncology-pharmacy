// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
// import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"


import "../node_modules/gentelella/vendors/bootstrap/dist/css/bootstrap.min.css"
import "../node_modules/gentelella/vendors/font-awesome/css/font-awesome.min.css"
import "../node_modules/gentelella/vendors/nprogress/nprogress.css"
import "../node_modules/gentelella/vendors/google-code-prettify/bin/prettify.min.css"
import "../node_modules/gentelella/build/css/custom.min.css"

import $ from "../node_modules/gentelella/vendors/jquery/dist/jquery.min.js"
window.$ = $;
window.jQuery = $;
import "../node_modules/gentelella/vendors/bootstrap/dist/js/bootstrap.min.js"
import "../node_modules/gentelella/vendors/fastclick/lib/fastclick.js"
import "../node_modules/gentelella/vendors/nprogress/nprogress.js"
import "../node_modules/gentelella/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"
import "../node_modules/gentelella/vendors/jquery.hotkeys/jquery.hotkeys.js"
import "../node_modules/gentelella/vendors/google-code-prettify/src/prettify.js"
import "../node_modules/gentelella/build/js/custom.min.js"


import "../node_modules/gentelella/production/images/img.jpg"
import "../node_modules/gentelella/production/images/inbox.png"
