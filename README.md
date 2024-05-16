# Install via Podman
- `podman build -t img-front:v0.1 .` 
- `podman run -d -p 8080:80 img-front:v0.1`
- Access frontend with `http://localhost:8080`
## If you need to use Docker
- `docker build -t img-front:v0.1 -f Containerfile`

# Dev via Podman
- `podman build -t frontdev -f Containerfile.dev`
- `podman run -p 5173:5173 -v .:/app -it -d frontdev`

# .env file
- have an `.env` file in the root of the repo, you can copy `.env.example` and adapt it