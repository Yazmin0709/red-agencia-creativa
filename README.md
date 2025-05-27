PROYECTO: Agencia Creativa Digital

OBJETIVOS DE LA RED:
- Diseñar una red eficiente y segura que soporte la operaci[on de ua agencia creativa digital.
- Proteger la confidencialidad de los archivos de clientes y proyectos mediante controles de seguridad adecuados.
- Implementar buenas prácticas de seguridad basadas en la norma ISO/ITEC 27001.
- Establecer una segmentación lógica entre departamentos para facilitar el monitoreo y la administración.

-------

DEPARTAMENTOS:
- Creativo
- Soporte
- Administración 
- Dirección 
- Servidores 

------

ASIGNACIÓN DE DIRECCIONES IP Y TABLA DE ENRUTAMIENTO

| Departamento     | Subred CIDR       | Rango de IPs Útiles           | Puerta de Enlace  |VLAN
|------------------|-------------------|-------------------------------|-------------------|-----
| Creativo         | 192.168.10.0/30   | 192.168.10.1 – 192.168.10.2   | 192.168.10.1      |10
| Soporte          | 192.168.10.4/30   | 192.168.10.5 – 192.168.10.6   | 192.168.10.5      |20
| Administración   | 192.168.10.8/30   | 192.168.10.9 – 192.168.10.10  | 192.168.10.9      |30
| Dirección        | 192.168.10.12/30  | 192.168.10.13 – 192.168.10.14 | 192.168.10.13     |40
| Servidores       | 192.168.10.16/30  | 192.168.10.17 – 192.168.10.18 | 192.168.10.17     |50

------

ROLES Y RESPONSABILIDADES DEL EQUIPO

| Integrante                        | Rol                       | Responsabilidad Principal |
|----------------------------------|---------------------------|----------------------------|
| Sandra Yazmín Aguirre Cruz       | Coordinadora de Proyecto  | Supervisar diseño de red y documentación ISO 27001 |
| Francisca Karina Parra Arzola    | Especialista en Seguridad | Implementar políticas ISO 27001 y controles técnicos |
| Vanessa Muñoz Gandarilla         | Arquitecta de Red         | Diseñar la red, calcular subredes y configurar direccionamiento |
| Josué Esaú González Gutiérrez    | Administrador de TI       | Gestionar respaldos, nube, correo y mantenimiento |
