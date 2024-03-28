const sql = require("mssql");
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
  server: DB_SERVER,
  port: DB_PORT,
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

async function connecting() {
  try {
    await sql.connect(sqlConfig);
    /*  const result = await sql.query`select * from PRODUIT`; */
    console.log("Connected to 304-AH-INTER-SERVERII-ANDREA-OSMANY");
    /* console.log(result); */
  } catch (err) {
    console.error("Error en la conexión o consulta:", err);
  } finally {
    sql.close();
  }
}

connecting();
