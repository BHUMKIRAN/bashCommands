# Next.js Commands

Next.js is a React framework for full-stack web apps. It supports routing, server rendering, API routes, static generation, and deployment-friendly builds.

## Create Project

```bash
npx create-next-app@latest my-app
pnpm create next-app my-app
```

## Development

```bash
npm run dev
npm run build
npm start
npm run lint
pnpm dev
pnpm build
pnpm start
pnpm lint
```

## Script Definitions

- `dev` - Start the Next.js development server.
- `build` - Create the production build.
- `start` - Run the production server after a build.
- `lint` - Check code quality with the configured linter.

## Useful Packages

```bash
npm install next-auth
pnpm add next-auth
npm install prisma @prisma/client
pnpm add prisma @prisma/client
npm install zod
pnpm add zod
npm install @tanstack/react-query
pnpm add @tanstack/react-query
```

## Common Tasks

```bash
npm run build
pnpm build
npm run dev -- --port 3001
pnpm dev --port 3001
npx prisma init
pnpm dlx prisma init
npx prisma studio
pnpm dlx prisma studio
```
