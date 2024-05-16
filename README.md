# Install via Podman
- `podman build -t img-front:v0.1 .` 
- `podman run -d -p 8080:80 img-front:v0.1`
- Access frontend with `http://localhost:8080`

# Dev via Podman
- `podman build -t frontdev -f Containerfile.dev`
- `podman run -p 5173:5173 -v .:/app -it -d frontdev`