
readme_completo.txt
# 🚀 Minecraft Server Dockerized Stack

![Minecraft](https://img.shields.io/badge/Minecraft-1.20.1+-blue?logo=minecraft)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker)
![License](https://img.shields.io/badge/License-MIT-green)

Una solución completa y **"lista para usar"** para desplegar servidores de Minecraft (Vanilla o con Mods) utilizando **Docker**. Este stack no solo levanta el servidor, sino que incluye herramientas de monitoreo, gestión de logs y un proxy inverso.

---

## ✨ Características

*   **Soporte Universal de Modpacks:** Compatible con CurseForge, Modrinth, FTB, Technic o instalaciones manuales (Forge/Fabric/Quilt).
*   **Consola Web (Dozzle):** Visualiza los logs del servidor en tiempo real desde tu navegador.
*   **Panel de Estado (Uptime Kuma):** Monitoriza la disponibilidad y latencia de tu servidor.
*   **Gestor de Dominios (Nginx Proxy Manager):** Configura dominios (ej: `mc.tuweb.com`) y certificados SSL fácilmente.
*   **Auto-pausa:** Ahorra recursos del sistema pausando el servidor cuando no hay jugadores conectados.

---

## 🛠️ Inicio Rápido

### 1. Requisitos Previos
Tener instalado **Docker** y **Docker Compose**.

### 2. Instalación

```bash
# 1. Clonar el repositorio
git clone https://github.com/Xavito06/dockerized-cobbelverse-minecraft-server.git
cd dockerized-cobbelverse-minecraft-server

# 2. Configurar variables de entorno
cp .env.example .env

# 3. Editar el archivo .env con tus preferencias
# nano .env (o usa tu editor favorito)

# 4. Iniciar el stack
docker compose up -d
```

---

## ⚙️ Configuración (`.env`)

El archivo `.env` es el corazón del proyecto. Aquí algunos valores clave:

| Variable | Descripción | Ejemplo |
| :--- | :--- | :--- |
| `TYPE` | Motor del servidor (FABRIC, FORGE, VANILLA, etc) | `FABRIC` |
| `MEMORY` | RAM asignada al servidor | `4G` |
| `CF_API_KEY` | Tu API Key de CurseForge (opcional) | `tu_key` |
| `MODRINTH_MODPACK` | Slug o URL del pack en Modrinth | `cobblemon-fabric` |
| `MOTD` | Mensaje de bienvenida en la lista de servers | `¡Hola Docker!` |

---

## 🌐 Puertos y Acceso

Una vez levantado el stack, podrás acceder a las siguientes herramientas:

| Servicio | Puerto | Descripción |
| :--- | :--- | :--- |
| **Minecraft** | `25565` | Puerto para conectar al juego. |
| **Logs** | `8888` | Consola en vivo (vía web). |
| **Status** | `3001` | Panel de control de Uptime Kuma. |
| **Proxy** | `81` | Panel de Nginx Proxy Manager (User: `admin@example.com` / Pwd: `changeme`). |

---

## 📦 Gestión de Mods

### Uso de Modpacks Automáticos
*   **CurseForge:** Cambia `TYPE=AUTO_CURSEFORGE` y añade la URL del pack en `CF_PAGE_URL`.
*   **Modrinth:** Cambia `TYPE=MODRINTH` y añade el ID/URL en `MODRINTH_MODPACK`.

### Instalación Manual
Si tienes tus propios archivos `.jar`, simplemente colócalos en la carpeta `./data/mods` que se creará tras el primer inicio y reinicia el contenedor:

```bash
docker compose restart mc
```

---

## 📂 Estructura del Proyecto

```text
├── data/                 # Datos persistentes (Mundos, mods, configs)
│   ├── uptime-kuma/      # Datos del panel de estado
│   └── proxy/            # Datos del gestor de dominios
├── .env.example          # Plantilla de configuración
├── docker-compose.yml    # Definición de los servicios
└── README.md             # Esta guía
```

---

## 🤝 Créditos
Este proyecto utiliza la excelente imagen base de [itzg/minecraft-server](https://github.com/itzg/docker-minecraft-server).

## 📄 Licencia
Este proyecto está bajo la **Licencia MIT** - mira el archivo `LICENSE` para detalles.

---
**Desarrollado por Xavito06**
