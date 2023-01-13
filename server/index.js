const express = require("express");
const compression = require("compression");
const helmet = require("helmet");
const path = require("path");
const app = express();

const PORT = 8080;

app.disable('x-powered-by');
app.use(compression());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, './www')));
app.get('*', (_, res) => {
  res.setHeader('content-type', 'text/html');
  res.sendFile(path.resolve(__dirname, './www/index.html'));
});

app.listen(PORT, () => console.log(`Server listening on port: ${PORT}`));