import express from "express";
import cors from "cors";

const app = express();
const PORT = process.env.PORT || 7890;

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors());

//Route Middleware
const TodoRouter = require("./routes/todo.route");
app.use("/", TodoRouter);

app.listen(PORT, () => console.info(`Server running on port ${PORT}`));
