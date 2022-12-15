import { Pool } from "pg";

//creating a pool object to get access to postgerSQL DB
const pool: Pool = new Pool({
  user: "postgres",
  password: "password",
  host: "localhost",
  port: 7000,
  database: "perntodo",
});

export default pool;
