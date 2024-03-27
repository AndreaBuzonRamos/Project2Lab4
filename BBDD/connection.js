const Connection = require("tedious").Connection;
const Request = require("tedious").Request;

const config = {
  server: "LOSM-ROG-STRIXYNAMSOSERVER",
  authentication: {
    type: "default",
    options: {
      userName: "rsteve",
      password: "rsteve9876",
      encrypt: true,
    },
  },
  optionds: {
    port: 54350,
    database: "304-AH-INTER-SERVERII-ANDREA-OSMANY",
    trustServerCertificate: true,
    options: {
      encrypt: true,
    },
  },
};

const connection = new Connection(config);

connection.connect();
connection.on("connect", (err) => {
  if (err) {
    console.log("Une erreur s'est produit pendant la connection!");
    throw err;
  }
  executeStatement();
});

function executeStatement() {
  console.log("Connecté à la BBDD!");
  const request = new Request("SELECT 24/2", (err, rowCont) => {
    if (err) {
      console.log("Une erreur s'est produit pendant la requête!");
      throw err;
    }

    connection.close();
  });
  request.on("row", (columns) => {
    console.log(columns);
  });
  connection.execSql(request);
}
