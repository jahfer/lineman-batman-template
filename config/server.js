/* Define custom server-side HTTP routes for lineman's development server
 *   These might be as simple as stubbing a little JSON to
 *   facilitate development of code that interacts with an HTTP service
 *   (presumably, mirroring one that will be reachable in a live environment).
 *
 * It's important to remember that any custom endpoints defined here
 *   will only be available in development, as lineman only builds
 *   static assets, it can't run server-side code.
 *
 * This file can be very useful for rapid prototyping or even organically
 *   defining a spec based on the needs of the client code that emerge.
 *
 */
var fs = require('fs');

module.exports = {
  drawRoutes: function(app) {
    app.get('/api/:resource.json', function (req, res) {
      fs.readFile(__dirname + '/api/' + req.params.resource + '.json', 'utf8', function (err, data) {
        if (err) {
          return res.send(500, err);
        }
        res.json(200, JSON.parse(data));
      })
    });
  }
};
