# HATEKID Website

This project is a static promotional website for the band HATEKID. It includes a home page, a news page, and a links page, along with shared styling, media assets, and a small PowerShell script for updating news content.

Watch Demo by clicking on the Youtube link below.

https://youtu.be/f1lHrxWXsdg

## Project Structure

- `index.html` - Landing page with hero media, featured songs, and recent updates.
- `news.html` - News and announcement page for releases, tour dates, and festival appearances.
- `links.html` - Social and platform link hub with placeholder profile URLs.
- `css/` - Shared site styling, layout, cards, menu, content, and media-specific styles.
- `js/scripts.js` - Client-side behavior for the mobile/sidebar menu and scroll-to-top button.
- `assets/` - Static assets such as the favicon and band image.
- `update-news.ps1` / `update-news.bat` - Helper scripts for replacing the news section content in `news.html`.

## Notes

- This is a plain HTML/CSS/JavaScript site with no build step required.
- External dependencies are loaded from CDNs, including Google Fonts, Font Awesome, and Bootstrap's JavaScript bundle.
- Several social/profile links and music links are still placeholders and should be replaced with real destinations before launch.

## Running Locally

Open `index.html` in a browser, or serve the folder with any simple static file server if you want to test it more like a deployed site.
