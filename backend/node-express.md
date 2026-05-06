# Node.js and Express Commands

Node.js runs JavaScript on the server. Express is a minimal web framework for building APIs, web servers, middleware, and backend routes.

## Project Setup

```bash
npm init -y
pnpm init
npm install express
pnpm add express
npm install -D nodemon
pnpm add -D nodemon
npm install dotenv cors helmet morgan
pnpm add dotenv cors helmet morgan
npm install express-validator
pnpm add express-validator
```

## Run

```bash
node server.js
npx nodemon server.js
pnpm dlx nodemon server.js
npm run dev
pnpm dev
```

## Common Scripts

Add scripts like these to `package.json`:

```json
{
  "scripts": {
    "dev": "nodemon server.js",
    "start": "node server.js",
    "test": "jest"
  }
}
```

## TypeScript Backend

```bash
npm install -D typescript ts-node-dev @types/node @types/express
pnpm add -D typescript ts-node-dev @types/node @types/express
npx tsc --init
pnpm dlx tsc --init
```

## Common Database Packages

```bash
npm install mongoose
pnpm add mongoose
npm install mysql2
pnpm add mysql2
npm install pg
pnpm add pg
npm install prisma @prisma/client
pnpm add prisma @prisma/client
npx prisma init
pnpm dlx prisma init
npx prisma migrate dev
pnpm dlx prisma migrate dev
npx prisma studio
pnpm dlx prisma studio
```

## Testing

```bash
npm install -D jest supertest
pnpm add -D jest supertest
npm test
pnpm test
```

## Package Definitions

- `express` - Web server and routing framework.
- `dotenv` - Loads environment variables from `.env`.
- `cors` - Enables cross-origin requests.
- `helmet` - Adds common HTTP security headers.
- `morgan` - Logs HTTP requests.
- `express-validator` - Validates and sanitizes request data.
- `nodemon` - Restarts the server when files change during development.
