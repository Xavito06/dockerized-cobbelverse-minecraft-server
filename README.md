# ⛏️ Cobbleverse Docker Stack

Repositorio con la configuración completa para desplegar un servidor **Cobblemon (Cobbleverse)** profesional en un entorno doméstico o laboratorio. Incluye proxy inverso con dominios personalizados, visor de logs en tiempo real y panel de estado.

---

## 📋 Requisitos Previos

### Hardware recomendado
- **CPU:** mínimo 2 hilos (vCPU) de buen rendimiento
- **RAM:** **8 GB** mínimo (Cobbleverse es exigente)
- **Disco:** **30 GB** mínimo (SSD recomendado)

### Software requerido
Sistema Linux (recomendado **Ubuntu Server 22.04+**):
- **Docker**
- **Docker Compose**

**Instalación rápida (Ubuntu):**
```bash
sudo apt update && sudo apt install docker.io docker-compose -y
```

---

## 🚀 Guía de Instalación

### Paso 1: Clonar el repositorio
```bash
git clone https://github.com/TU_USUARIO/TU_REPO.git
cd TU_REPO
```

### Paso 2: Configurar variables de entorno
Crea el archivo real desde la plantilla y edítalo:
```bash
cp .env.example .env
nano .env
```

Ajusta al menos:
- `MC_MEMORY` (RAM del servidor)
- Dominio (DuckDNS / Cloudflare)
- Token correspondiente

### Paso 3: Iniciar el stack
```bash
docker-compose up -d
```

> ⏳ **Nota:** el primer arranque descargará automáticamente todos los mods de Cobbleverse desde Modrinth.

---

## 🌐 Red y Acceso

Configura **port forwarding** en tu router hacia la IP de la VM:

- **25565 TCP/UDP** → Servidor Minecraft
- **80 TCP** → Servicios web
- **443 TCP** → Servicios web (HTTPS)
- **81 TCP** → Panel de administración del proxy

### Servicios disponibles
- **Panel del Proxy (Nginx):** `http://IP_DE_TU_VM:81`
  - Usuario: `admin@example.com`
  - Contraseña: `changeme`

- **Logs en vivo:** `http://logs.tu-dominio.com`
- **Estado del servidor:** `http://status.tu-dominio.com`

---

## 🎮 Cómo unirse al servidor

1. Descarga el **Modrinth Launcher**
2. Busca e instala el modpack **Cobbleverse**
3. Añade la dirección del servidor (ej. `miservidor.duckdns.org`)

> ⚠️ Asigna **4–6 GB de RAM** en los ajustes del lanzador de Minecraft.

---

## 🛠️ Administración

Ejecuta desde la VM:

- **Dar OP:**
```bash
docker exec mc-server mc-send-to-console op TuNombreUsuario
```

- **Whitelist:**
```bash
docker exec mc-server mc-send-to-console whitelist add NombreAmigo
```

- **Backup manual:**
```bash
bash scripts/backup.sh
```

---

## ℹ️ Notas finales

Este proyecto está pensado para facilitar el **auto‑alojamiento de servidores Minecraft** con herramientas de monitoreo y gestión profesionales.

Clona el repositorio, sigue los pasos y tendrás tu servidor Cobblemon listo en minutos. 🚀
