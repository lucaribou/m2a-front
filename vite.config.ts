import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
import dotenv from 'dotenv';

export default defineConfig({
  plugins: [vue()],
  define: {
    'import.meta.env': {
      VITE_BACKEND_HOST: process.env.VITE_BACKEND_HOST,
      VITE_BACKEND_PORT: process.env.VITE_BACKEND_PORT
    }
  }
});