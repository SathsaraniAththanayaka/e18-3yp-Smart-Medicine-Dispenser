const express = require('express');
const mongoose = require('mongoose');
const app = express();
mongoose.connect('mongodb://localhost:27017/', { useNewUrlParser: true, useUnifiedTopology: true }, (err) => {
    if (err) {
        console.log(err);
    } else {
        console.log("Connected to DB");
    }
});

app.listen(3000, () => {
    console.log("Server is running on port 3000");
});

