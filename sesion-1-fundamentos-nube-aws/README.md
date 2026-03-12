# Sesión 1: Fundamentos de la Nube y AWS

## 📋 Descripción
Esta sesión cubre los fundamentos conceptuales y técnicos necesarios para comprender cómo funciona Amazon Web Services (AWS), desde su impacto en el mercado laboral hasta los servicios core que permiten construir soluciones en la nube.

**Duración total estimada:** ~100 minutos (5 módulos × 20 min c/u)

---

## 🗺️ Agenda de la Sesión

| # | Módulo | Tema Principal | Enlace |
| :---: | :--- | :--- | :--- |
| 01 | **La Nube en tu Carrera Profesional** | Impacto transversal de AWS en Telecomunicaciones, Ciberseguridad, Sistemas e Ingeniería de Software. | [Ir al módulo →](./01-impacto-carreras-ti/README.md) |
| 02 | **Infraestructura TI y Virtualización** | Anatomía del Data Center, componentes de hardware, virtualización e hipervisores como cimientos de la nube. | [Ir al módulo →](./02-infraestructura-fisica-virtualizacion/README.md) |
| 03 | **Computación en la Nube y AWS** | Definición NIST, modelos de despliegue y servicio, historia de AWS y sus 6 ventajas estratégicas. | [Ir al módulo →](./03-fundamentos-cloud-aws/README.md) |
| 04 | **Infraestructura Global y Acceso** | Regiones, Zonas de Disponibilidad, Edge Locations, extensiones híbridas y métodos de acceso a AWS. | [Ir al módulo →](./04-infraestructura-global-acceso/README.md) |
| 05 | **Servicios Principales de AWS** | Las 9 categorías del portafolio y los 6 servicios fundamentales (EC2, EBS, VPC, S3, RDS, DynamoDB). | [Ir al módulo →](./05-servicios-principales-aws/README.md) |

---

## 🧭 Hilo Conductor de la Sesión

Esta sesión sigue una progresión lógica deliberada que conecta cada módulo con el siguiente:

```
Mercado Laboral          Infraestructura Física     Cloud Computing
(Módulo 01)       →      y Virtualización       →   y AWS
                         (Módulo 02)                (Módulo 03)
                                                        ↓
                         Servicios Principales  ←  Infraestructura
                         de AWS (Módulo 05)         Global (Módulo 04)
```

*   **Módulo 01 → 02:** Antes de entender la nube, hay que entender el problema que resuelve: el Data Center físico y sus limitaciones.
*   **Módulo 02 → 03:** La virtualización es el puente técnico entre el hardware y el modelo de consumo cloud.
*   **Módulo 03 → 04:** Una vez entendida la nube conceptualmente, se estudia *dónde* vive AWS físicamente en el mundo.
*   **Módulo 04 → 05:** Conocida la infraestructura global, se explora *qué* servicios ofrece AWS sobre esa infraestructura.

---

## 🎯 Objetivos Generales de la Sesión

Al completar esta sesión, el estudiante será capaz de:

1.  Describir cómo la adopción de la nube transforma los perfiles profesionales en TI.
2.  Explicar la relación entre infraestructura física, virtualización y computación en la nube.
3.  Aplicar la definición NIST de cloud computing y distinguir los modelos de servicio (IaaS, PaaS, SaaS).
4.  Interpretar la arquitectura global de AWS (Regiones, AZs, Edge) y seleccionar una región según criterios técnicos.
5.  Identificar las categorías de servicios de AWS y sus 6 servicios fundamentales en una arquitectura de referencia.

---

## 📌 Prerrequisitos Recomendados

*   Conocimientos básicos del **Modelo OSI** y conceptos de red (IP, subredes, protocolos).
*   Conceptos básicos de sistemas operativos (procesos, memoria, almacenamiento).

> [!TIP]
> Si no tienes experiencia previa con virtualización o redes, el **Módulo 02** explica estos fundamentos desde cero. No es necesario saltarlo.

---

## 🔒 Enfoque de Seguridad Transversal

Todos los módulos de esta sesión incorporan una **Perspectiva de Seguridad** que introduce progresivamente los conceptos del *Modelo de Responsabilidad Compartida* de AWS:

- **Módulo 03:** Introducción a la responsabilidad compartida entre AWS y el cliente.
- **Módulo 04:** Aislamiento regional y el principio de que los datos no se mueven entre regiones salvo configuración explícita.
- **Módulo 05:** Principio de Menor Privilegio, Defensa en Profundidad para arquitecturas VPC.
