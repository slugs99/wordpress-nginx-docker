const express = require('express');
const app = express();
const PORT = 3000;

app.get("/hello", (req, res) => {
  return res.json({
    hello: 'world321123'
  })
})

app.listen(PORT, () => console.log(`listening to port ${PORT}`));
