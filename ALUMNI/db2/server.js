const express = require('express');
const sqlite3 = require('sqlite3').verbose();

const app = express();
const PORT = 3000;

// Create a new SQLite database in memory
const db = new sqlite3.Database(':memory:');

// Create alumni table
db.serialize(() => {
  db.run(`CREATE TABLE IF NOT EXISTS alumni (
    id INTEGER PRIMARY KEY,
    imageUrl TEXT,
    firstName TEXT,
    lastName TEXT,
    email TEXT,
    contactNumber TEXT,
    age INTEGER,
    dob TEXT,
    salary REAL,
    address TEXT
  )`);
});

app.use(express.json());

// Endpoint to add a new alumni
app.post('/alumni', (req, res) => {
  const { imageUrl, firstName, lastName, email, contactNumber, dob, salary, address } = req.body;
  const age = new Date().getFullYear() - new Date(dob).getFullYear();
  
  db.run(`INSERT INTO alumni (imageUrl, firstName, lastName, email, contactNumber, age, dob, salary, address) 
          VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`, 
          [imageUrl, firstName, lastName, email, contactNumber, age, dob, salary, address], 
          function(err) {
            if (err) {
              console.error(err.message);
              return res.status(500).send('Error inserting alumni');
            }
            res.send('Alumni added successfully');
          });
});

// Endpoint to get all alumni
app.get('/alumni', (req, res) => {
  db.all('SELECT * FROM alumni', (err, rows) => {
    if (err) {
      console.error(err.message);
      return res.status(500).send('Error getting alumni');
    }
    res.json(rows);
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
