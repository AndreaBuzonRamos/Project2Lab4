const sql = require("mssql");

const sqlConfig = {
  user: "rsteve",
  password: "rsteve9876",
  database: "304-AH-INTER-SERVERII-ANDREA-OSMANY",
  server: "localhost",
  port: 54350,
  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000,
  },
  options: {
    encrypt: true, // for azure
    trustServerCertificate: true, // Cambia a true para certificados autofirmados
  },
};

async function connectAndQuery() {
  try {
    await sql.connect(sqlConfig);
    const result = await sql.query`select * from PRODUIT`;
    console.log("Connected to PRODUIT");
    console.log(result);
  } catch (err) {
    console.error("Error en la conexión o consulta:", err);
  } finally {
    sql.close();
  }
}

connectAndQuery();
