# Módulo 3 - Fundamentos de Nube y AWS

**⏱️ Tiempo Estimado:** 20 minutos

**🎯 Objetivos de Aprendizaje:**
*   **Definir** Computación en la Nube según el estándar **NIST 800-145**.
*   **Diferenciar** los modelos de servicio (**IaaS, PaaS, SaaS**) y despliegue.
*   **Identificar** las 6 ventajas de AWS y su liderazgo histórico.
*   **Comprender** el modelo de consumo y el beneficio de la Capa Gratuita y Créditos.

---

## 🚀 Introducción: El Nuevo Paradigma TI
Si el Módulo 2 nos enseñó cómo la virtualización "rompe" los fierros para crear recursos lógicos, este módulo explora cómo esos recursos se industrializan a escala planetaria. La "Nube" no es solo tecnología; es un modelo operativo y financiero que permite a cualquier persona con una tarjeta de crédito o un plan de créditos acceder a la misma potencia de cómputo que una empresa del *Fortune 500*.

---

## 3.1 ☁️ Fundamentos de Cloud Computing

### 🧩 1. Definición de Computación en la Nube
De acuerdo con el estándar **NIST 800-145**, la computación en la nube es mucho más que "usar servidores remotos"; es un modelo operativo definido por el control y la agilidad:

> "Un modelo para habilitar el acceso a red ubicuo, conveniente y bajo demanda a un conjunto compartido de recursos informáticos configurables (redes, servidores, almacenamiento, aplicaciones y servicios) que pueden **aprovisionarse y liberarse rápidamente con un mínimo esfuerzo de gestión o interacción con el proveedor de servicios**."

#### Desglose del Requerimiento:
*   **Acceso Bajo Demanda (On-demand):** El usuario adquiere recursos en el momento exacto de la necesidad, eliminando la espera de meses por hardware físico.
*   **Auto-servicio:** Toda la provisión es automatizada a través de una consola o API. El usuario es autónomo; no requiere que un administrador del proveedor intervenga manualmente para habilitar un servicio.
*   **Mínimo Esfuerzo de Gestión:** El usuario se libera de la carga operativa de mantener el metal puro (capa física), centrándose exclusivamente en la configuración lógica y sus aplicaciones.

---

### 🏗️ 2. La Abstracción de Recursos
La nube es la evolución definitiva de la virtualización que estudiamos en el Módulo 2. Mientras que la virtualización tradicional se enfocaba en consolidar servidores individuales, el Cloud Computing implementa lo que conocemos como **Virtualización Industrial**: la abstracción masiva de todo el Centro de Datos hacia servicios lógicos.

Este proceso transforma los componentes físicos ("hierros") en entidades de software que el usuario gestiona como **Infraestructura como Código (IaC)**.

#### 🔄 Mapeo de Evolución: Físico a Lógico
Para comprender la escala de AWS, debemos observar cómo los recursos físicos del Data Center se han transformado en bloques de construcción lógicos:

1.  **Computación (Compute):**
    *   *Físico:* Servidores Blade, CPUs multinúcleo y placas base.
    *   *Lógico:* **Instancias de Cómputo (ej. EC2)**. Capacidad de procesamiento elástica distribuida dinámicamente por el hipervisor.
2.  **Almacenamiento (Storage):**
    *   *Físico:* Discos mecánicos (HDD), estado sólido (SSD) y cabinas SAN/NAS conectadas por fibra.
    *   *Lógico:* **Volúmenes de Bloque (EBS)** y **Almacenamiento de Objetos (S3)**. Capacidad infinita percibida por el usuario sin preocuparse por la degradación del hardware.
3.  **Redes (Networking):**
    *   *Físico:* Switches, Routers, Firewalls físicos y kilómetros de cableado Spine-Leaf.
    *   *Lógico:* **Virtual Private Clouds (VPC)**. Redes virtuales aisladas donde defines subredes y tablas de ruteo mediante clics o código.
4.  **Bases de Datos (Databases):**
    *   *Físico:* Servidores dedicados con optimización de E/S y redundancia de disco.
    *   *Lógico:* **Servicios Gestionados (ej. RDS, DynamoDB)**. Abstracción total donde no ves el sistema operativo ni el hardware, solo el motor de datos.

### 🌟 3. Las 5 Características Esenciales NIST
Para que un servicio sea legítimamente considerado "Cloud Computing" según el estándar **NIST 800-145**, debe presentar simultáneamente estos cinco atributos. Si falta uno, estamos ante una implementación de TI tradicional o una virtualización parcial.

#### 1️⃣ Auto-servicio bajo demanda (On-demand Self-service)
El usuario puede aprovisionar capacidades de computación (tiempo de servidor, almacenamiento en red) unilateralmente y de forma automática.
*   **Significado técnico:** No hay tickets de soporte ni llamadas telefónicas para "pedir permiso". Si el desarrollador necesita una base de datos un domingo a las 3:00 AM, AWS se la entrega mediante la Consola o API en minutos sin intervención humana del proveedor.

#### 2️⃣ Acceso amplio a la Red (Broad Network Access)
Las capacidades están disponibles a través de la red y se accede a ellas mediante mecanismos estándar que promueven el uso por plataformas cliente heterogéneas (ej. teléfonos móviles, laptops, estaciones de trabajo).
*   **Significado técnico:** Los servicios de AWS son accesibles globalmente vía Internet o redes privadas seguras utilizando protocolos estándar (como HTTP/HTTPS), permitiendo que cualquier dispositivo autorizado consuma los recursos.

#### 3️⃣ Agrupación de Recursos (Resource Pooling)
Los recursos informáticos del proveedor se agrupan para servir a múltiples consumidores utilizando un modelo de múltiples inquilinos (**Multi-tenancy**).
*   **Significado técnico:** Diferentes recursos físicos y virtuales se asignan y reasignan dinámicamente según la demanda del consumidor. El cliente generalmente no tiene control ni conocimiento sobre la ubicación exacta de los recursos provistos (ej. en qué rack específico está su dato), aunque puede especificar la Región o Zona de Disponibilidad.

#### 4️⃣ Elasticidad Rápida (Rapid Elasticity)
Las capacidades pueden aprovisionarse y liberarse elásticamente, en algunos casos automáticamente, para escalar rápidamente hacia afuera y hacia adentro según la demanda.
*   **Significado técnico:** Para el consumidor, las capacidades disponibles para aprovisionamiento a menudo parecen ser **infinitas** y pueden comprarse en cualquier cantidad en cualquier momento. Esto permite manejar picos de tráfico (como un Black Friday) y luego reducir costos eliminando recursos innecesarios.

#### 5️⃣ Servicio Medido (Measured Service)
Los sistemas de nube controlan y optimizan automáticamente el uso de recursos mediante una capacidad de medición en algún nivel de abstracción apropiado para el tipo de servicio (ej. almacenamiento, procesamiento, ancho de banda).
*   **Significado técnico:** El uso de los recursos puede ser monitoreado, controlado y reportado, proporcionando **transparencia tanto para el proveedor como para el consumidor** del servicio utilizado. Es la base del modelo "Pago-por-uso".

---

### 🏗️ 4. Modelos de Despliegue
La elección del modelo de despliegue define la relación entre el usuario y la infraestructura física, impactando directamente en la **Gobernanza de Datos** y el cumplimiento legal.

#### 🔴 Nube Pública (Public Cloud)
Infraestructura propiedad de un proveedor (AWS) que se comparte entre miles de clientes utilizando un modelo de múltiples inquilinos.
*   **Caso de uso:** Startups, aplicaciones de consumo masivo y entornos que requieren escalabilidad extrema.
*   **Significado:** Es el modelo de pago por uso más puro, eliminando totalmente el CapEx.

#### 🔵 Nube Privada (Private Cloud)
Recursos utilizados exclusivamente por una organización. Puede estar en el centro de datos local de la empresa o alojada por un tercero.
*   **Caso de uso:** Entidades con requerimientos de seguridad extrema o hardware legado que no puede migrar a la nube pública.
*   **Significado:** Proporciona control total sobre la capa física, pero a costa de mantener la complejidad operativa.

#### 🟣 Nube Híbrida (Hybrid Cloud)
Integración de nube pública y privada mediante capas de red (VPN/Direct Connect) y orquestación.
*   **Estrategia:** Permite mantener datos sensibles localmente bajo control estricto mientras se utiliza la capacidad exuberante de la nube pública para el procesamiento o el "Cloud Bursting".

#### 🟢 Nube Comunitaria (Community Cloud)
Infraestructura compartida por organizaciones con una misión o requisitos específicos (ej. sector salud, bancos o gobierno).

---

### 🛡️ Soberanía y Gestión de Riesgos

#### 🏳️ Nube Soberana (Sovereign Cloud)
Diseñada para asegurar que todos los datos y metadatos residan exclusivamente dentro de las fronteras de una nación o región, cumpliendo con leyes estrictas de **Residencia de Datos**. Es fundamental para gobiernos y sectores regulados.

#### 🔀 Multi-cloud y Vendor Lock-in
Estrategia de utilizar dos o más proveedores de nube (ej. AWS + Azure) para evitar el **Vendor Lock-in** (dependencia crítica de un solo proveedor).
*   **Objetivo:** Aumentar la resiliencia sistémica y tener poder de negociación sobre los costos y SLA de los proveedores.

---

### 🛠️ 5. Modelos de Servicio
La computación en la nube se divide en tres niveles de abstracción. A medida que te mueves hacia la derecha (de IaaS a SaaS), transfieres más capas de gestión operativa a AWS, permitiendo que tu equipo se enfoque exclusivamente en el valor de negocio.

#### 📊 Matriz de Responsabilidades por Modelo
Esta tabla replica el modelo visual de responsabilidad, donde la carga operativa se desplaza del cliente hacia AWS:

| Capas de Gestión | On-Premises | Infraestructura como Servicio (IaaS) | Plataforma como Servicio (PaaS) | Software como Servicio (SaaS) |
| :--- | :---: | :---: | :---: | :---: |
| **Datos y acceso** | 🟢 | 🟢 | 🟢 | 🟢 |
| **Aplicaciones** | 🟢 | 🟢 | 🟢 | 🔵 |
| **Runtime (Ejecución)** | 🟢 | 🟢 | 🔵 | 🔵 |
| **Sistema operativo** | 🟢 | 🟢 | 🔵 | 🔵 |
| **Máquina virtual** | 🟢 | 🟢 | 🔵 | 🔵 |
| **Cómputo** | 🟢 | 🔵 | 🔵 | 🔵 |
| **Redes** | 🟢 | 🔵 | 🔵 | 🔵 |
| **Almacenamiento** | 🟢 | 🔵 | 🔵 | 🔵 |

**Leyendas:**
🟢 **Tú lo gestionas** (Gestión del Cliente)
🔵 **El proveedor de nube lo gestiona** (Gestión de AWS)

---

#### 🏗️ IaaS (Infrastructure as a Service)
Es el bloque de construcción básico. AWS proporciona acceso a recursos de red, computadoras (virtuales o dedicadas) y almacenamiento.
*   **Caso AWS:** Amazon EC2; representa el modelo IaaS puro.

#### 🚀 PaaS (Platform as a Service)
Elimina la necesidad de gestionar el sistema operativo y el hardware subyacente. Te permite enfocarte únicamente en el despliegue de código.
*   **Caso AWS:** AWS Lambda y AWS Elastic Beanstalk.

#### 💻 SaaS (Software as a Service)
Es un producto completo, gestionado y ejecutado por el proveedor. Solo consumes el servicio final.
*   **Casos:** Amazon Connect, Salesforce, Gmail.

---

## 3.2 🟠 Amazon Web Services (AWS)

### 📜 1. ¿Qué es AWS y cuál es su Historia?
Amazon Web Services (AWS) es la plataforma de nube más adoptada y completa del mundo, ofreciendo más de 200 servicios integrales desde centros de datos a nivel global.

#### Hitos de Innovación (Historia):
AWS no nació como un producto comercial planificado, sino como la solución a la ineficiencia de Amazon.com.
*   **2006:** Lanzamiento de **Amazon S3** (Simple Storage Service) y **Amazon SQS** (Simple Queue Service), democratizando el acceso al almacenamiento masivo y la mensajería asíncrona.
*   **Agosto 2006:** Lanzamiento de **Amazon EC2** (Elastic Compute Cloud), permitiendo a los desarrolladores "alquilar" capacidad de cómputo por hora.
*   **First-mover Advantage:** Esta ventaja histórica ha permitido a AWS desarrollar un ecosistema de partners y una profundidad de servicios que define los estándares de la industria actual.

### 💰 2. Las 6 Ventajas de AWS
Estas ventajas son los pilares financieros y operativos del éxito de la adopción de nube:

1.  **Cambiar gastos fijos por gastos variables:** Elimina la necesidad de grandes inversiones iniciales (CapEx) en centros de datos. Pagas solo cuando consumes recursos.
2.  **Beneficiarse de enormes economías de escala:** Debido a la escala masiva de AWS, el costo unitario de los recursos es mucho menor que el que cualquier empresa individual podría lograr por su cuenta.
3.  **Dejar de adivinar la capacidad:** En lugar de comprar hardware para el "peor de los casos", escalas dinámicamente según la carga real.
4.  **Aumentar velocidad y agilidad:** Reduces el tiempo para obtener recursos de semanas a solo minutos, fomentando la experimentación.
5.  **Dejar de gastar dinero en mantenimiento:** Elimina la carga de "levantar objetos pesados" (enfriamiento, cableado, gestión de racks).
6.  **Alcance Global en Minutos:** Despliega tus aplicaciones en múltiples regiones geográficas con unos pocos clics, reduciendo la latencia para los usuarios finales.

### 💳 3. Modelo de Consumo y Créditos
La nube de AWS se basa en el concepto de **Utility Computing** (Cómputo como servicio público).

#### Filosofía Pay-as-you-go:
Pagas exactamente por lo que usas, sin contratos a largo plazo (a menos que elijas Reservar Instancias para ahorrar). Si apagas un recurso, dejas de pagar por él al segundo o al minuto.

#### Capa Gratuita (Free Tier):
*   **Siempre Gratis:** No caducan nunca (ej: AWS Lambda hasta 1M solicitudes).
*   **12 Meses Gratis:** Para nuevas cuentas (ej: Instancias t2.micro/t3.micro).
*   **Pruebas Cortas:** Para servicios específicos.

#### Plan de Créditos:
AWS ofrece programas de créditos para startups y estudiantes. Actualmente, es posible acceder a planes de **hasta $200 USD en créditos válidos por 6 meses** para realizar laboratorios avanzados de arquitectura sin incurrir en costos personales.

---

> [!IMPORTANT]
> ## 🔒 Matriz de Responsabilidad Compartida
> Es el concepto de seguridad más importante en AWS. AWS es responsable de la **Seguridad DE la Nube** (infraestructura global, hardware, software de red), mientras que tú eres responsable de la **Seguridad EN la Nube** (configuración del firewall de red, protección de datos del cliente, gestión de identidad).

---

## 💡 Conceptos Críticos
*   **Ecosistema de Partners:** La red global de empresas que construyen soluciones sobre AWS.
*   **Utility Computing:** Modelo de suministro de servicios donde los recursos se gestionan como una utilidad pública.
*   **SLA (Service Level Agreement):** El compromiso formal de disponibilidad de AWS para cada servicio.

---

## 🛠️ Ejemplo Práctico: Startup vs Corporación
*   **La Startup:** Utiliza sus **$200 USD de crédito** para lanzar un MVP global usando S3 y Lambda (PaaS). No gastan un dólar en servidores físicos.
*   **La Corporación:** Migra su data center legacy a EC2 (IaaS), dejando de pagar el alquiler de naves industriales y optimizando costos mediante las **Economías de Escala** de AWS.

---

## 🗣️ Discusión Sistémica
**¿Es AWS demasiado grande para fallar?**
Dada la dependencia global de AWS, una interrupción masiva impacta gran parte de Internet.
**Pregunta:** ¿Cómo ayuda la ventaja de "Alcance Global en Minutos" a una empresa a protegerse contra fallos regionales de infraestructura?

---

## 🧠 Puntos de Retención
*   AWS es pionero desde 2006 (S3 y EC2).
*   Las 6 ventajas eliminan la fricción operativa y financiera.
*   La seguridad es compartida: no asumas que AWS lo protege todo por ti.
*   El modelo de consumo permite experimentar con bajo riesgo financiero.

---

## ✅ Criterios de Éxito
- [ ] ¿Entiendo la diferencia entre CapEx y OpEx en el contexto de las 6 ventajas?
- [ ] ¿Puedo explicar el origen interno de AWS en Amazon.com?
- [ ] ¿Distingo entre Seguridad "DE" la nube y "EN" la nube?
- [ ] ¿Sé cómo verificar que estoy dentro de los límites de la Capa Gratuita?
