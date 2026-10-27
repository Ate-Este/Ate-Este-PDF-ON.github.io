# PDF-ON — Published web page

Static landing page for PDF-ON (privacy-first PDF tools). Ready to deploy to any static host (Vercel, Netlify, GitHub Pages, Cloudflare Pages).

## Files
- `index.html` — landing (hero, features, tools, pricing, footer)
- `privacy.html` — privacy policy
- `terms.html` — terms of service

## Deploy
Upload the `pdf-on/` folder to your host. For Vercel: `vercel --prod` from this folder. For GitHub Pages: push to a repo and enable Pages on the folder.

## Source
Built from the NEXUS reverse-engineering + Replica pipeline (recon → architect → design → entrepreneur → build → backend → test → diff → deploy → brand). The full app source lives in `replica-app/` and `replica-worker/`.