# Backend Node Docker Lab 1

API REST con NestJS + MySQL 9 utilizando Docker Compose.

## 🚀 Ejecución

```bash
# 1. Clonar el repositorio
git clone https://github.com/alexis5900/backend-node-docker-lab1.git
cd backend-node-docker-lab1

# 2. Crear el archivo .env
cp .env.example .env

# 3. Construir y ejecutar todos los servicios
docker-compose up --build

# O ejecutar en segundo plano
docker-compose up -d --build
```

La aplicación estará disponible en `http://localhost:3000`

## 🧪 Pruebas

```bash
# Crear un usuario
curl -X POST http://localhost:3000/users -H "Content-Type: application/json" -d '{"nombre":"Carlos López","edad":28}'

# Listar usuarios
curl http://localhost:3000/users
```

## 📝 Notas

- La tabla `usuarios` se crea automáticamente al iniciar los contenedores
- Los datos persisten en el volumen `miapp_db_data`
- El archivo `.env` no está en el repositorio (usar `.env.example` como plantilla)

## 🐳 Imagen Docker

- **Repositorio:** `ghcr.io/alexis5900/backend-node-docker-lab1:lab-1`
- **Servicios:** Backend (puerto 3000) + MySQL 9 (puerto 3306)

