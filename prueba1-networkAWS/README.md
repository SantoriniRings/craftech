# Network Diagram AWS Prueba Técnica

## Estructura de Grupos:

1. **AWS Cloud**
   
2. **Región (Region Group):**
   - Dos Zonas de Disponibilidad (AZ) para garantizar Alta Disponibilidad (HA).
   
3. **Virtual Private Cloud (VPC):**
   - Ambas AZ participan en la misma VPC para proporcionar aislamiento seguro, subredes, etc.
   
4. **Subredes:**
   - Una subred pública para los Servicios Web (Frontend).
   - Otra subred pública para las Aplicaciones Web (Backend).
   - Una subred privada con control de acceso para las bases de datos tanto relacional (RDS) como no relacional (DynamoDB).

## Escalabilidad y Disponibilidad:
   
- **Auto Scaling:**
  - Dos Grupos de Auto Scaling: uno para los Servicios Web y otro para las Aplicaciones Web.
   
- **Elastic Load Balancer (ELB):**
  - Distribuye el tráfico entre las instancias para garantizar escalabilidad y disponibilidad.
   
- **Amazon CloudFront:**
  - CDN para distribuir contenido Frontend y acelerar la entrega de contenido estático.
   
- **Amazon S3:**
  - Almacena archivos estáticos para garantizar durabilidad y disponibilidad.

## Gestión del DNS:

- **Route 53:**
  - Gestiona las solicitudes DNS de manera global distribuida.

## Comunicación y Acceso a Datos:

- **AWS Lambda:**
  - Las instancias EC2 del backend se comunican con microservicios externos a través de Lambda.
  - Lambda tiene acceso a las bases de datos según sea necesario.
   
## Seguridad:

- **Grupos de Seguridad y Listas de Control de Acceso (ACL):**
  - Implementados en toda la arquitectura para garantizar la seguridad.

## Notas Adicionales:

- **Base de Datos:**
  - Conexiones entre las bases de datos para flexibilidad operativa, rendimiento y escalabilidad.
  
- **Diagramación:**
  - La seguridad se refleja en el acceso a la subred privada, siendo una zona crítica.
  - Aspectos específicos de las bases de datos no se diagramaron, pero se consideran en la arquitectura.



