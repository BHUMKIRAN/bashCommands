# Tailwind CSS Commands

Tailwind CSS is a utility-first CSS framework. You build designs by composing small classes directly in your markup or components.

## Install

```bash
npm install tailwindcss @tailwindcss/vite
pnpm add tailwindcss @tailwindcss/vite
npm install -D tailwindcss postcss autoprefixer
pnpm add -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
pnpm dlx tailwindcss init -p
```

## Build CSS

```bash
npx tailwindcss -i ./src/input.css -o ./dist/output.css --watch
pnpm dlx tailwindcss -i ./src/input.css -o ./dist/output.css --watch
npx tailwindcss -i ./src/input.css -o ./dist/output.css --minify
pnpm dlx tailwindcss -i ./src/input.css -o ./dist/output.css --minify
```

## With Frameworks

```bash
npm create vite@latest my-app -- --template react
pnpm create vite my-app --template react
npx create-next-app@latest my-app
pnpm create next-app my-app
```

## File Definitions

- `tailwind.config.js` - Tailwind theme, content paths, and plugin configuration.
- `postcss.config.js` - PostCSS pipeline configuration.
- `src/input.css` - CSS entry file that imports Tailwind layers.
- `dist/output.css` - Generated CSS file for the browser.
