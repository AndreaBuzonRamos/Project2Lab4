const express = require("express");
const app = express();
const port = 3000;
const mysql = require("mssql");
const tableName = "CLIENT";
const bodyParser = require("body-parser");
const sqlConnection = require(".BBDD/connexion");

/* const {
  DB_USER,
  DB_PASSWORD,
  DB_SERVER,
  DB_PORT,
  DB_DATABASE,
} = require("./BBDD");

var connection = mysql.connect({
  DB_SERVER,
  DB_USER,
  DB_PASSWORD,
  DB_DATABASE,
  DB_PORT,
}); */

app.use(bodyParser.json());
app.get("/", function (req, res) {
  sqlConnection.connect(function (err) {
    if (err) {
      return console.error("Error: " + err.code + " | " + err.message);
    }
    console.log("Connection réusie");
  });
  var query = `SELECT * FROM CLIENT`;
  sqlConnection.query(query, (err, query) => {
    if (err) {
      return console.error("Error: " + err.code + " | " + err.message);
    }
    console.log("Donnes récuperé!" + query.json());
    res
      .send
      /* query.map((item) => {
        return {
          id: item.id,
          nom: item.nom,
          prenom: item.prenom,
          email: item.email,
        };
      }) */
      ();
  });
});
app.post("/login", function (req, res) {
  async function connectAndQuery() {
    try {
      await mysql.connect(sqlConnection);
      const result =
        await mysql.query`select * from '${tableName}' WHERE email= ? AND password= ?`;
      res.status(200);
      res.send(console.log(result.nom + " est connecté"));
    } catch (err) {
      console.error("Error en la conexión o consulta:", err);
    } finally {
      mysql.close();
    }
  }
  connectAndQuery();
});

app.listen(port, () => {
  console.log("App à l'écout au port " + port);
});
