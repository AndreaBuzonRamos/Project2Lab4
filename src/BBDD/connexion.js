const mysql = require("mysql");
const {
  DB_USER,
  DB_PASSWORD,
  DB_SERVER,
  DB_PORT,
  DB_DATABASE,
} = require("./BBDD");

const sqlConfig = {
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_DATABASE,
  host: DB_SERVER,
  port: DB_PORT,
};

const connection = mysql.createConnection(sqlConfig);

connection.connect(function(err) {
  if (err) {
    console.error("Error en la conexión:", err);
    return;
  }
  console.log("Conexión establecida");
});

connection.query("SELECT * FROM PRODUIT", function (err, result, fields) {
  if (err) {
    console.error("Error en la consulta:", err);
    return;
  }
  console.log("Resultado de la consulta:", result);
  connection.end(function(err) {
    if (err) {
      console.error("Error al cerrar la conexión:", err);
      return;
    }
    console.log("Conexión cerrada");
  });
});
