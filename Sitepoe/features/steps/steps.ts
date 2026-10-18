import { expect } from '@playwright/test';
import { createBdd } from 'playwright-bdd';

const { Given, When, Then } = createBdd();

Given("je suis sur la page d'accueil", async ({ page }) => {
  await page.goto('/');
});

Given("je suis sur la page {string}", async ({ page }, fichier: string) => {
    await page.goto('/' + fichier);
});

When("je clique sur le lien {string}", async ({ page }, nom: string) => {
    await page.getByRole('link', { name: nom }).click();
});

When("je clique sur {string}", async ({ page }, titre: string) => {
    await page.locator('summary', { hasText: titre }).click();
});

Then ("je vois le lien {string}", async ({ page }, nom: string) => {
    await expect(page.getByRole('link', { name: nom })).toBeVisible();
});

Then ("la page affichée est {string}", async ({ page }, fichier: string) => {
    await expect(page).toHaveURL('/' + fichier);
});

Then ("je vois le titre {string}", async ({ page }, titre: string) => {
    await expect(page.getByRole('heading', { name: titre, level: 1 })).toBeVisible();
});

Then ("avis de {string} est visible", async ({ page }, titre: string) => {
    const avisElement = page.locator('details', { hasText: titre }).locator('p');
    await expect(avisElement).toBeVisible();
});

Then ("avis de {string} est caché", async ({ page }, titre: string) => {
    const avisElement = page.locator('details', { hasText: titre }).locator('p');
    await expect(avisElement).toBeHidden();
});