# LiveTest

Demonstrates a bug on first LV reconnect after a netsplit.

1. Install prerequisites (see `.tool-versions`)
2. Start the server with `iex -S mix phx.server`
3. Visit `localhost:4000`
4. Click on the radio button to select an option.
5. In the browser console run `liveSocket.disconnect()`, and then `liveSocket.connect()`.

The selection will be cleared, because the change event is not fired (as can be seen by a lack of any output in the iex session after the last connect). If you now select something again and repeat the step 5, the change event will be fired, and the selection will not be cleared.

The bug can be reproduced by refreshing the page. No need to restart the server.

I've tested this on the Firefox and Chromium browsers.
