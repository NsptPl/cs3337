import { sveltekit } from '@sveltejs/kit/vite';

/** @type {import('vite').UserConfig} */
const config = {
  plugins: [sveltekit()],
  optimizeDeps: {
    exclude: ['@beyonk/svelte-notifications'],
  },
  server: {
    port: 3000,
  },
  preview: {
    port: 3000,
  },
  ssr: {
    noExternal: ['@beyonk/svelte-notifications', '@fortawesome/*'],
  },
};

export default config;
