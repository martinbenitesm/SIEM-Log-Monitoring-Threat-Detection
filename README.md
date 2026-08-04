<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Orbitron&size=40&duration=3000&pause=1000&color=00BFFF&center=true&vCenter=true&width=1000&height=80&lines=SIEM+Log+Monitoring+and+Threat+Detection" />
</p>

## Objetivo del Proyecto
Construir un entorno de laboratorio SIEM completo para recolectar telemetría de endpoints (logs), simular ataques reales (Fuerza bruta y evasión con PowerShell) y desarrollar reglas de detección personalizadas para identificar estas amenazas.

## Herramientas y Entorno Utilizado
* **SIEM:** Splunk Free / ELK Stack (El que elijamos).
* **Endpoint Management:** Sysmon (System Monitor) de Sysinternals.
* **Máquinas Virtuales (Hypervisor):** Oracle VirtualBox / VMware Workstation.
* **Sistemas Operativos:** Windows 10/11 (Víctima) y Kali Linux (Atacante).

## Topología de Red Lógica
> [Aquí insertaremos un diagrama simple hecho en draw.io mostrando a Kali atacando a Windows, y Windows enviando logs al servidor SIEM]. 📸 Captura del diagrama de red.

## Pasos de Ejecución y Evidencia

### Fase 1: Despliegue del Entorno y SIEM
* Instalación y configuración de la máquina virtual atacante y víctima.
* Despliegue del servidor SIEM y configuración inicial.
* 📸 Captura: Dashboard inicial del SIEM corriendo exitosamente.

### Fase 2: Configuración de Telemetría (Sysmon) y Envío de Logs
* Instalación de Sysmon en la máquina Windows con una configuración modular (Ej. SwiftOnSecurity).
* Configuración del Forwarder para enviar los eventos de Windows y Sysmon al SIEM.
* 📸 Captura: Búsqueda en el SIEM mostrando los primeros logs llegando desde la máquina Windows (demostrando conectividad).

### Fase 3: Simulación de Ataques
* **Ataque 1 (Fuerza Bruta):** Ejecución de intentos de inicio de sesión fallidos contra la máquina Windows usando Kali (ej. Hydra o scripts de PowerShell).
* **Ataque 2 (Ejecución Maliciosa):** Uso de comandos codificados en PowerShell simulando un payload de malware.
* 📸 Captura: Terminal de Kali ejecutando el ataque o consola de Windows mostrando la ejecución del script.

### Fase 4: Detección y Análisis de Logs (Threat Hunting)
* Análisis de los Event ID de Windows (ej. 4624, 4625) y Event ID de Sysmon (ej. 1, 3, 22) para rastrear la actividad del atacante.
* Creación de búsquedas (Queries) específicas en el SIEM para aislar el ruido y encontrar el ataque.
* 📸 Captura: Pantalla del SIEM mostrando la query exacta y los logs del ataque de fuerza bruta.
* 📸 Captura: Pantalla del SIEM mostrando la detección del proceso malicioso de PowerShell.

### Fase 5: Alertas y Casos de Uso (Detection Engineering)
* Creación de reglas de alerta automatizadas basadas en las queries anteriores.
* 📸 Captura: Configuración de la alerta en el SIEM (Ej: "Alerta de múltiples inicios de sesión fallidos").

## Conclusiones y Lecciones Aprendidas
* [Aquí redactaremos qué habilidades técnicas mejoraste, qué obstáculos superaste y cómo esto simula un entorno real].
