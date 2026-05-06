# Vite Commands

Vite is a fast frontend build tool and dev server. It is commonly used for React, Vue, Svelte, vanilla JavaScript, and TypeScript projects.

## Create Projects

```bash
npm create vite@latest my-app
pnpm create vite my-app
npm create vite@latest my-app -- --template react
pnpm create vite my-app --template react
npm create vite@latest my-app -- --template vue
pnpm create vite my-app --template vue
npm create vite@latest my-app -- --template vanilla-ts
pnpm create vite my-app --template vanilla-ts
```

## Install Dependencies

```bash
npm install
pnpm install
```

## Scripts

```bash
npm run dev
npm run build
npm run preview
pnpm dev
pnpm build
pnpm preview
```

## Script Definitions

- `dev` - Start the Vite development server.
- `build` - Bundle the app for production.
- `preview` - Serve the production build locally for a final check.

## Environment

```bash
echo "VITE_API_URL=http://localhost:3000" > .env
```

## Common Options

```bash
npm run dev -- --host 0.0.0.0
pnpm dev --host 0.0.0.0
npm run dev -- --port 5174
pnpm dev --port 5174
```
