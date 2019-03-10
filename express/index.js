const express = require('express');
const app = express();
const PORT = 3000;


app.get("/", (req, res) => {
	res.json({ you : 'have arrived' });
});

app.get("/hello", (req, res) => {
  return res.json({
    hello: 'world321123'
  })
})

app.get("/server", (req, res) => {
  return res.json({
	msg: 's1'
  })
});

app.get("/server/get", (req, res) => {
	return res.json ({ d: req.query });
})

app.post("/server/send", (req, res) => {
	console.log("sent!", req);
	return res.json({ msg: 's1/s', r:req });
});

app.listen(PORT, () => console.log(`listening to port ${PORT}`));
