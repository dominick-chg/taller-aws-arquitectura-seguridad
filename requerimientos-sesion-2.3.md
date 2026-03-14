# Especificación de Requerimientos  
## Sesión 2 — Redes y Entrega de Contenido en AWS  
## Laboratorio 2 — Despliegue de Servidor Web en EC2 y Conectividad entre Instancias

Duración del laboratorio: **40 minutos**

---

# Objetivo del laboratorio

El objetivo de este laboratorio es que los participantes implementen una **aplicación web simple en una arquitectura de red previamente creada**, utilizando instancias de **Amazon EC2** dentro de subredes públicas y privadas.

Durante el laboratorio, los participantes desplegarán una instancia EC2 en una **subred pública**, configurarán automáticamente un servidor web mediante **User Data**, y validarán el acceso a la aplicación a través de Internet.

Posteriormente, desplegarán una segunda instancia EC2 en una **subred privada** y realizarán pruebas de conectividad entre ambas instancias. Los participantes deberán analizar y ajustar las reglas de **Security Groups** para permitir la comunicación necesaria entre las instancias, aplicando el principio de **mínimo privilegio**.

Este laboratorio permite a los participantes comprender cómo desplegar aplicaciones en AWS, cómo interactúan los recursos dentro de una arquitectura de red y cómo se controla la conectividad mediante mecanismos de seguridad.

---

# Resultados de aprendizaje

Al finalizar el laboratorio, el participante debe ser capaz de:

- Lanzar una instancia **Amazon EC2** en una subred pública
- Configurar automáticamente un servidor web mediante **User Data**
- Comprender cómo funcionan las **instancias expuestas a Internet**
- Validar el acceso a un servidor web mediante una dirección IP pública
- Lanzar una instancia EC2 dentro de una **subred privada**
- Probar conectividad entre instancias dentro de una VPC
- Analizar y modificar **Security Groups** para permitir conectividad controlada
- Aplicar el principio de **mínimo privilegio en reglas de seguridad**

---

# Arquitectura del laboratorio

La arquitectura utilizada en este laboratorio debe reutilizar los recursos creados en el **Laboratorio 1**:

- VPC del laboratorio
- Subred pública creada por el participante
- Subred privada creada por el participante
- Security Group creado en el laboratorio anterior

La arquitectura debe incluir:

- Una instancia EC2 en la **subred pública**
- Una instancia EC2 en la **subred privada**
- Un servidor web configurado automáticamente mediante **User Data**
- Conectividad interna entre ambas instancias

---

# Requerimientos Funcionales

---

# FR-L2-01 Lanzamiento de instancia EC2 en subred pública

## Descripción

El laboratorio debe requerir que los participantes lancen una **instancia Amazon EC2** dentro de la subred pública creada en el laboratorio anterior.

## Configuración requerida

La instancia debe:

- Estar asociada a la **VPC del laboratorio**
- Lanzarse dentro de la **subred pública**
- Tener asignada una **dirección IP pública**
- Usar el **Security Group creado previamente en el laboratorio 1**

## Objetivo pedagógico

Comprender cómo desplegar recursos accesibles desde Internet dentro de una arquitectura de red en AWS.

---

# FR-L2-02 Configuración automática del servidor web mediante User Data

## Descripción

La instancia EC2 pública debe configurarse automáticamente como **servidor web** mediante un script de **User Data**.

## Configuración requerida

El script de User Data debe:

- Instalar un servidor web
- Crear un archivo HTML que se sirva automáticamente al acceder al servidor

## Objetivo pedagógico

Comprender cómo **automatizar la configuración inicial de instancias** en AWS.

---

# FR-L2-03 Contenido del sitio web desplegado

## Descripción

La página web generada por el servidor debe contener información básica relacionada con el laboratorio.

## Requisitos del contenido

La página web debe incluir:

- Nombre del participante
- Región de AWS utilizada
- Dirección IP pública del servidor
- Información breve del laboratorio

## Requisitos de diseño

La página debe:

- Utilizar **HTML, CSS y JavaScript**
- Tener una **interfaz simple**
- Tener un **diseño visual claro y organizado**
- Ser **responsive de forma básica**

## Objetivo pedagógico

Permitir a los participantes visualizar inmediatamente el resultado de su implementación.

---

# FR-L2-04 Validación de acceso al servidor web

## Descripción

Los participantes deben validar que el servidor web está funcionando correctamente.

## Procedimiento requerido

Los participantes deben:

- Copiar la **dirección IP pública de la instancia EC2**
- Ingresarla en el navegador web
- Verificar que la página web desplegada se visualiza correctamente

## Resultado esperado

El navegador debe mostrar el sitio web generado mediante User Data.

---

# FR-L2-05 Lanzamiento de instancia EC2 en subred privada

## Descripción

El laboratorio debe requerir que los participantes lancen una segunda **instancia EC2** dentro de la **subred privada** creada en el laboratorio anterior.

## Configuración requerida

La instancia debe:

- Estar asociada a la misma VPC
- Lanzarse en la subred privada
- No tener dirección IP pública asignada

## Objetivo pedagógico

Comprender cómo desplegar recursos internos que **no son accesibles desde Internet**.

---

# FR-L2-06 Prueba inicial de conectividad entre instancias

## Descripción

Los participantes deben intentar establecer conectividad entre la instancia pública y la instancia privada.

## Procedimiento requerido

Los participantes deben:

- Conectarse a la instancia pública
- Intentar enviar paquetes ICMP hacia la instancia privada

## Resultado esperado

La conectividad **no debe funcionar inicialmente**, debido a las restricciones de seguridad configuradas.

## Objetivo pedagógico

Demostrar cómo las reglas de seguridad afectan la comunicación entre recursos.

---

# FR-L2-07 Modificación de reglas de Security Groups

## Descripción

Los participantes deben modificar las reglas de **Security Groups** para permitir la comunicación entre ambas instancias.

## Configuración requerida

Las reglas de entrada deben permitir únicamente:

- El tráfico estrictamente necesario para la prueba de conectividad

No deben configurarse reglas excesivamente permisivas.

## Objetivo pedagógico

Comprender cómo aplicar el principio de **mínimo privilegio** en configuraciones de seguridad.

---

# FR-L2-08 Validación final de conectividad

## Descripción

Los participantes deben repetir la prueba de conectividad después de ajustar las reglas de seguridad.

## Resultado esperado

La instancia pública debe poder comunicarse con la instancia privada.

## Objetivo pedagógico

Verificar que los participantes comprendan la relación entre **seguridad de red y conectividad entre recursos**.

---

# Requerimientos No Funcionales

---

# NRF-L2-01 Uso de la arquitectura creada en el laboratorio anterior

El laboratorio debe utilizar exclusivamente los recursos creados en el **Laboratorio 1**, reforzando la continuidad entre actividades.

---

# NRF-L2-02 Automatización mediante User Data

La configuración del servidor web debe realizarse automáticamente mediante **User Data**, evitando configuraciones manuales extensas dentro de la instancia.

---

# NRF-L2-03 Tiempo de ejecución del laboratorio

Las actividades del laboratorio deben poder completarse dentro de **40 minutos**.

---

# NRF-L2-04 Principio de mínimo privilegio

Las configuraciones de seguridad deben seguir el principio de **mínimo privilegio**, permitiendo únicamente el tráfico necesario para el funcionamiento de la arquitectura.

---

# NRF-L2-05 Validación visual del resultado

El laboratorio debe permitir a los participantes verificar el resultado mediante:

- Acceso a la página web desplegada
- Pruebas de conectividad entre instancias