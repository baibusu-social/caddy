<div align="center">
  <br />
   <p>
    <img src="https://share.baibusu.social/ZiCX0UZb.png">
  </p>

![Discord](https://img.shields.io/discord/162293073718673409?style=for-the-badge&color=%237289da)
![GitHub License](https://img.shields.io/github/license/baibusu-social/caddy?style=for-the-badge)
![GitHub Tag](https://img.shields.io/github/v/tag/baibusu-social/caddy?style=for-the-badge)

[![Made with Docker](https://img.shields.io/badge/Made_with-Docker-blue?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/ 'Go to Docker homepage')
[![Made with GH Actions](https://img.shields.io/badge/CI-GitHub_Actions-blue?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions 'Go to GitHub Actions homepage')
[![Baibusu.Social](https://img.shields.io/badge/Baibusu.Social-a793b2?style=for-the-badge&logo=misskey&logoColor=white)](https://baibusu.social/ 'Go to Baibusu.Social')

</div>

# **Baibusu.Social Caddy**

Caddy docker image utilized by Baibusu social for reverse proxy and management. Includes Cloudflare DNS challenge for SSL settings.

## Deployment

1. Create needed directory and files with

`mkdir caddy`

2. Fetch required files.

```bash
wget -O caddy/docker-compose.yml https://raw.githubusercontent.com/baibusu-social/caddy/refs/heads/release/compose-example.yml
wget -O caddy/.env https://raw.githubusercontent.com/baibusu-social/caddy/refs/heads/release/.env.sample
wget -O babibusu/Caddyfile https://raw.githubusercontent.com/baibusu-social/api/refs/heads/release/Caddyfile.example

cd caddy
```

3. Add your Cloudflare API key to the .env file. No changes should be required within the docker compose yaml file. Using the example Caddyfile make the changes needed for your environment. As currently configured a DNS challenege will be requested for any site/server block in the Caddyfile.

4. Start your caddy!

`docker compose up -d`
