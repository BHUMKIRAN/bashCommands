# Node Package Manager Commands

Package managers install dependencies, run scripts, and manage lockfiles for JavaScript and TypeScript projects.

## Choosing a Manager

- `npm` - Comes with Node.js and uses `package-lock.json`.
- `pnpm` - Fast and disk-efficient package manager that uses `pnpm-lock.yaml`.
- `yarn` - Alternative package manager that commonly uses `yarn.lock`.

Use one package manager per project. Mixing lockfiles can create confusing dependency versions.

## npm

```bash
npm init
npm init -y
npm install
npm install package-name
npm install package-name --save-dev
npm uninstall package-name
npm update
npm outdated
npm run dev
npm run build
npm run test
npm run lint
npm list
npm list -g --depth=0
npm cache clean --force
```

## npm Definitions

- `npm install` - Install all dependencies from `package.json`.
- `npm install package-name` - Add a runtime dependency.
- `npm install package-name --save-dev` - Add a development dependency.
- `npm run script-name` - Run a script from `package.json`.
- `npx command-name` - Run a package binary without manually installing it globally.

## pnpm

```bash
pnpm init
pnpm install
pnpm add package-name
pnpm add -D package-name
pnpm remove package-name
pnpm update
pnpm outdated
pnpm dev
pnpm build
pnpm test
pnpm lint
pnpm list
pnpm store prune
```

## pnpm Definitions

- `pnpm install` - Install all dependencies from `package.json`.
- `pnpm add package-name` - Add a runtime dependency.
- `pnpm add -D package-name` - Add a development dependency.
- `pnpm script-name` - Run a script from `package.json`, for example `pnpm dev`.
- `pnpm dlx command-name` - Run a package binary without manually installing it globally.
- `pnpm store prune` - Remove unused packages from pnpm's global content-addressed store.

## yarn

```bash
yarn init
yarn install
yarn add package-name
yarn add -D package-name
yarn remove package-name
yarn upgrade
yarn outdated
yarn dev
yarn build
yarn test
yarn lint
yarn cache clean
```

## npx, pnpm dlx, yarn dlx

```bash
npx create-next-app@latest my-app
pnpm dlx create-vite my-app
yarn dlx create-react-app my-app
```

## Node Version Managers

```bash
node -v
npm -v
corepack enable
corepack prepare pnpm@latest --activate
nvm install --lts
nvm use --lts
nvm ls
```
