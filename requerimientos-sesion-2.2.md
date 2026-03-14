# Especificación de Requerimientos  
## Sesión 2 — Redes y Entrega de Contenido en AWS  
## Laboratorio 1 — Arquitectura de Red Privada en AWS

Duración del laboratorio: **40 minutos**

---

# Objetivo del laboratorio

El objetivo de este laboratorio es que los participantes construyan una **arquitectura básica de red en AWS** utilizando los componentes fundamentales de **Amazon VPC**.

Durante el laboratorio, los participantes configurarán subredes, tablas de enrutamiento y mecanismos de seguridad de red, comprendiendo cómo se segmenta y protege una red dentro de AWS. Asimismo, se configurará conectividad entre redes mediante **VPC Peering**.

Este laboratorio permite a los participantes comprender la **estructura base de una arquitectura cloud**, la cual será utilizada en los laboratorios posteriores para desplegar aplicaciones y probar conectividad entre recursos.

---

# Resultados de aprendizaje

Al finalizar el laboratorio, el participante debe ser capaz de:

- Crear subredes dentro de una VPC existente
- Diferenciar y configurar **subredes públicas y privadas**
- Configurar **tablas de enrutamiento**
- Asociar subredes a tablas de rutas
- Comprender cómo se controla el acceso a Internet mediante **Internet Gateway**
- Crear y configurar **Security Groups**
- Crear y configurar **Network ACL**
- Configurar conectividad entre redes mediante **VPC Peering**
- Comprender cómo los diferentes componentes de red interactúan dentro de una arquitectura AWS

---

# Arquitectura del laboratorio

La arquitectura implementada durante el laboratorio debe incluir los siguientes componentes dentro de una VPC:

- Una **subred pública**
- Una **subred privada**
- Al menos una **tabla de enrutamiento**
- Un **Security Group**
- Un **Network ACL**
- Un **VPC Peering** con una VPC previamente creada por el instructor

La **VPC y el Internet Gateway serán creados por el instructor** al inicio del laboratorio y estarán disponibles para todos los participantes.

---

# Requerimientos Funcionales

---

# FR-L1-01 Uso de la VPC proporcionada por el instructor

## Descripción

El laboratorio debe requerir que los participantes utilicen una **Amazon VPC previamente creada por el instructor**.

## Condiciones

- La VPC debe estar disponible en la cuenta de AWS antes del inicio del laboratorio.
- La VPC debe tener un **CIDR Block configurado**.
- La VPC debe tener asociado un **Internet Gateway**.

## Objetivo pedagógico

Permitir que los estudiantes se enfoquen en **la configuración de la arquitectura de red**, en lugar de la creación inicial de la VPC.

---

# FR-L1-02 Creación de una subred pública

## Descripción

Los participantes deben crear una **subred pública dentro de la VPC proporcionada**.

## Configuración requerida

La subred debe:

- Estar asociada a la VPC del laboratorio
- Tener un rango de direcciones IP dentro del CIDR de la VPC
- Permitir el uso de direcciones IP públicas

## Objetivo pedagógico

Comprender cómo se implementan redes destinadas a **recursos accesibles desde Internet**.

---

# FR-L1-03 Creación de una subred privada

## Descripción

Los participantes deben crear una **subred privada dentro de la VPC**.

## Configuración requerida

La subred debe:

- Estar asociada a la VPC del laboratorio
- Utilizar un rango de direcciones IP distinto al de la subred pública
- No asignar direcciones IP públicas automáticamente

## Objetivo pedagógico

Comprender cómo se diseñan redes destinadas a **recursos internos o backend**.

---

# FR-L1-04 Configuración de tablas de enrutamiento

## Descripción

Los participantes deben configurar una **tabla de enrutamiento** que permita el acceso a Internet desde la subred pública.

## Configuración requerida

La tabla de rutas debe incluir:

- Ruta local dentro de la VPC
- Ruta hacia Internet mediante el **Internet Gateway**

## Objetivo pedagógico

Comprender cómo se controla el flujo de tráfico dentro de la VPC.

---

# FR-L1-05 Asociación de subredes a tablas de rutas

## Descripción

Los participantes deben asociar las subredes creadas a las tablas de enrutamiento correspondientes.

## Requisitos

- La subred pública debe asociarse a la tabla de rutas con acceso a Internet
- La subred privada debe asociarse a una tabla de rutas sin acceso directo a Internet

## Objetivo pedagógico

Comprender cómo la **asociación entre subredes y tablas de rutas determina la conectividad**.

---

# FR-L1-06 Creación de un Security Group

## Descripción

Los participantes deben crear un **Security Group dentro de la VPC**.

## Configuración requerida

El Security Group debe incluir:

- Reglas de entrada
- Reglas de salida

## Objetivo pedagógico

Comprender el funcionamiento de **firewalls a nivel de instancia en AWS**.

---

# FR-L1-07 Creación de un Network ACL

## Descripción

Los participantes deben crear y configurar un **Network ACL**.

## Configuración requerida

Debe incluir:

- Reglas de entrada
- Reglas de salida

## Objetivo pedagógico

Comprender la diferencia entre **Network ACL y Security Groups**.

---

# FR-L1-08 Asociación del Network ACL a las subredes

## Descripción

Los participantes deben asociar el **Network ACL creado a las subredes configuradas**.

## Objetivo pedagógico

Comprender cómo los Network ACL se aplican **a nivel de subred**.

---

# FR-L1-09 Configuración de VPC Peering

## Descripción

Los participantes deben configurar **VPC Peering** entre la VPC del laboratorio y otra VPC creada previamente por el instructor.

## Configuración requerida

El proceso debe incluir:

- Creación de la solicitud de peering
- Aceptación de la solicitud
- Configuración de rutas necesarias

## Objetivo pedagógico

Comprender cómo se habilita **conectividad privada entre redes en AWS**.

---

# Requerimientos No Funcionales

---

# NRF-L1-01 Enfoque práctico guiado

La guía del laboratorio debe proporcionar **instrucciones paso a paso** para cada actividad, permitiendo a los participantes completar la arquitectura durante el tiempo asignado.

---

# NRF-L1-02 Uso de la consola de administración de AWS

Todas las actividades del laboratorio deben realizarse mediante la **AWS Management Console**.

---

# NRF-L1-03 Tiempo de ejecución del laboratorio

Las actividades del laboratorio deben poder completarse dentro de **40 minutos**.

---

# NRF-L1-04 Relación con laboratorios posteriores

La arquitectura de red creada en este laboratorio debe ser **utilizada en el laboratorio siguiente**, donde se desplegarán instancias EC2 dentro de las subredes configuradas.

---

# NRF-L1-05 Uso de diagramas de arquitectura

La guía del laboratorio debe incluir un **diagrama de arquitectura** que represente:

- La VPC
- Subred pública
- Subred privada
- Internet Gateway
- Tablas de rutas
- Security Groups
- Network ACL
- VPC Peering