import { defineConfig } from '@playwright/test';
import { defineBddConfig } from 'playwright-bdd';

const testDir = defineBddConfig({
  features: 'features/*.feature',
  steps: 'features/steps/*.ts',
});

export default defineConfig({
  testDir,
  use: { baseURL: 'http://localhost:3000' },
  webServer: {
    command: 'npx http-server . -p 3000',
    url: 'http://localhost:3000',
    reuseExistingServer: true,
  },
});