# dockerized-cobbelverse-minecraft-server
# ⛏️ Cobbleverse Docker Stack

Este repositorio contiene la configuración completa para desplegar un servidor de **Cobblemon (Cobbleverse)** profesional en tu propio laboratorio doméstico. Incluye un proxy inverso para dominios personalizados, visor de logs en tiempo real y un panel de estado.

---

## 📋 Requisitos Previos

Para ejecutar este proyecto, necesitas una **Máquina Virtual (VM)** o un equipo físico con las siguientes características:

### 1. Hardware Recomendado
* **Procesador:** Mínimo 2 hilos (vCPUs) de alto rendimiento.
* **Memoria RAM:** Mínimo **8 GB** (el modpack Cobbleverse es exigente).
* **Almacenamiento:** Mínimo **30 GB** de espacio en disco (SSD preferiblemente).

### 2. Software Requerido
Debes tener instalado en tu sistema Linux (se recomienda Ubuntu Server 22.04 o superior):
* **Docker:** El motor de contenedores.
* **Docker Compose:** Herramienta para orquestar los servicios.

> **Comando de instalación rápida (Ubuntu):**
> `sudo apt update && sudo apt install docker.io docker-compose -y`

---

## 🚀 Guía de Instalación

### Paso 1: Clonar el Repositorio
Accede a tu máquina virtual y descarga tus archivos:
```bash
git clone [https://github.com/TU_USUARIO/TU_REPO.git](https://github.com/TU_USUARIO/TU_REPO.git)
cd TU_REPO
