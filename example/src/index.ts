import express, { Request, Response } from 'express';

const app = express();
const port = 3000; // default port to listen

// define a route handler for the default home page
app.get("/", (req: Request, res: Response) => {
    res.send("It works!");
});

// start the Express server
app.listen(port, () => {
    console.log(`server started at http://localhost:${port}`);
});
