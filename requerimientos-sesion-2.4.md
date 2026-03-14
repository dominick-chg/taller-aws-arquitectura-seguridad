# Especificación de Requerimientos  
## Sesión 2 — Redes y Entrega de Contenido en AWS  
## Laboratorio 3 — Hosting de sitio web estático con S3 y CloudFront

Duración del laboratorio: **30 minutos**

---

# Objetivo del laboratorio

El objetivo de este laboratorio es demostrar cómo implementar una **arquitectura serverless básica para el alojamiento de sitios web estáticos** utilizando **Amazon S3** y **Amazon CloudFront**.

Durante el laboratorio, los participantes crearán un bucket en Amazon S3, configurarán el alojamiento de sitio web estático y cargarán los archivos que componen el sitio. Inicialmente, el acceso al sitio producirá un error debido a la ausencia de una política de acceso público, lo que permitirá explicar los controles de seguridad en S3.

Posteriormente, los participantes configurarán una **política de bucket que permita acceso de solo lectura**, validarán el acceso al sitio web y finalmente crearán una **distribución de CloudFront** para entregar el contenido mediante una red de distribución global. Para reforzar buenas prácticas de seguridad, se actualizará la política del bucket para permitir acceso únicamente desde la distribución de CloudFront.

Este laboratorio permite comprender cómo construir una **arquitectura web serverless altamente disponible y escalable**, basada en almacenamiento de objetos y una red CDN.

---

# Resultados de aprendizaje

Al finalizar el laboratorio, el participante debe ser capaz de:

- Crear y configurar un **bucket en Amazon S3**
- Comprender el impacto del **bloqueo de acceso público**
- Subir archivos que componen un sitio web estático
- Habilitar **Static Website Hosting en S3**
- Diagnosticar errores de acceso relacionados con políticas de bucket
- Configurar una **política de bucket con permisos controlados**
- Crear una **distribución de Amazon CloudFront**
- Comprender cómo CloudFront mejora la distribución de contenido
- Restringir el acceso al bucket para que el contenido sea servido únicamente por CloudFront

---

# Arquitectura del laboratorio

La arquitectura implementada debe incluir:

- Un **bucket de Amazon S3**
- Un **sitio web estático alojado en S3**
- Una **distribución de CloudFront**
- Una política de bucket que controle el acceso al contenido

La arquitectura final debe permitir el acceso al sitio web mediante la **URL proporcionada por la distribución de CloudFront**.

---

# Requerimientos Funcionales

---

# FR-L3-01 Creación del bucket de Amazon S3

## Descripción

El laboratorio debe requerir que los participantes creen un **bucket en Amazon S3** destinado a alojar un sitio web estático.

## Configuración requerida

El bucket debe:

- Tener un nombre único globalmente
- Estar ubicado en la región utilizada durante el taller

## Configuración adicional

Durante la creación del bucket, los participantes deben:

- **Deshabilitar el bloqueo de acceso público**

## Consideraciones

La guía del laboratorio debe advertir que AWS muestra una advertencia al deshabilitar el bloqueo de acceso público y explicar brevemente el motivo de esta advertencia.

## Objetivo pedagógico

Comprender cómo funciona el control de acceso público en S3.

---

# FR-L3-02 Carga de contenido estático del sitio web

## Descripción

Los participantes deben subir al bucket los archivos que componen el sitio web.

## Estructura requerida del sitio

El contenido debe incluir:

### Archivos HTML

- index.html
- nosotros.html
- contacto.html
- error.html

### Estructura de carpetas

- **styles/**  
  - archivo CSS principal

- **scripts/**  
  - archivo JavaScript principal

- **assets/**  
  - una imagen
  - un favicon

## Requisitos de diseño

El sitio web debe:

- Tener un **diseño simple**
- Ser **visualmente atractivo**
- Mantener una estructura organizada

## Objetivo pedagógico

Comprender cómo se almacenan y organizan los archivos de un sitio web en almacenamiento de objetos.

---

# FR-L3-03 Habilitación del alojamiento de sitio web estático

## Descripción

Los participantes deben habilitar la funcionalidad **Static Website Hosting** del bucket.

## Configuración requerida

Debe configurarse:

- Documento de inicio
- Documento de error

## Resultado esperado

AWS debe proporcionar un **endpoint de sitio web estático** para el bucket.

## Objetivo pedagógico

Comprender cómo Amazon S3 puede actuar como servidor web para contenido estático.

---

# FR-L3-04 Verificación inicial del acceso al sitio

## Descripción

Los participantes deben intentar acceder al sitio web utilizando el **endpoint proporcionado por el alojamiento de sitio web estático**.

## Resultado esperado

El acceso al sitio debe producir un error que indique **Forbidden**.

## Objetivo pedagógico

Demostrar cómo los **controles de acceso de S3 impiden el acceso al contenido** cuando no existe una política de bucket adecuada.

---

# FR-L3-05 Configuración de política de bucket para acceso público

## Descripción

Los participantes deben agregar una **política de bucket** que permita acceso de lectura al contenido del sitio web.

## Configuración requerida

La política debe permitir únicamente:

- Acción **GetObject**

El acceso debe ser permitido para:

- Usuarios en Internet

## Objetivo pedagógico

Comprender cómo las **políticas de bucket controlan el acceso a los objetos en S3**.

---

# FR-L3-06 Validación del acceso al sitio web

## Descripción

Los participantes deben volver a acceder al sitio web utilizando el endpoint del bucket.

## Resultado esperado

El sitio web debe visualizarse correctamente en el navegador.

## Objetivo pedagógico

Validar la correcta configuración del **alojamiento web en S3**.

---

# FR-L3-07 Creación de distribución de CloudFront

## Descripción

Los participantes deben crear una **distribución de Amazon CloudFront**.

## Configuración requerida

La distribución debe:

- Utilizar el **bucket de S3 como origen**
- Entregar el contenido del sitio web

## Objetivo pedagógico

Comprender cómo se utiliza una CDN para distribuir contenido web globalmente.

---

# FR-L3-08 Restricción de acceso al bucket desde CloudFront

## Descripción

Después de crear la distribución de CloudFront, los participantes deben actualizar la **política de bucket**.

## Configuración requerida

La política debe permitir acceso al contenido **únicamente desde la distribución de CloudFront**.

## Objetivo pedagógico

Comprender cómo aplicar buenas prácticas de seguridad para evitar acceso directo al bucket.

---

# FR-L3-09 Validación final mediante CloudFront

## Descripción

Los participantes deben acceder al sitio web utilizando la **URL de la distribución de CloudFront**.

## Resultado esperado

El sitio web debe visualizarse correctamente a través de la URL de CloudFront.

## Objetivo pedagógico

Comprender cómo una CDN distribuye contenido almacenado en S3.

---

# Requerimientos No Funcionales

---

# NRF-L3-01 Enfoque práctico guiado

La guía del laboratorio debe proporcionar instrucciones claras y estructuradas para completar todas las actividades dentro del tiempo asignado.

---

# NRF-L3-02 Tiempo de ejecución del laboratorio

Las actividades deben poder completarse dentro de **30 minutos**.

---

# NRF-L3-03 Uso de la consola de AWS

Todas las actividades del laboratorio deben realizarse mediante la **AWS Management Console**.

---

# NRF-L3-04 Énfasis en buenas prácticas de seguridad

La guía debe explicar brevemente:

- Riesgos de acceso público en S3
- Ventajas de restringir acceso al bucket mediante CloudFront

---

# Resultado esperado

Al finalizar el laboratorio, los participantes deben poder **acceder al sitio web mediante la URL de la distribución de CloudFront**, visualizando correctamente el contenido estático del sitio.