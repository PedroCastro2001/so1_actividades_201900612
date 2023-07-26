#### Pedro Antonio Castro Calderón
#### 201900612
#### Sistemas Operativos 1

&nbsp;

## ACTIVIDAD 1

&nbsp;

### Tipos de Kernel 

- #### Microkernel o micronúcleo: 

    Ofrece las funciones básicas de cada dispositivo, administrando todo lo que tenga CPU, memoria e IPC, lo que conlleva a un mayor control de dispositivos. Brindan beneficios en cuanto a portabilidad, seuridad y capacidad para adaptarse. Sin embargo, el rendimiento de la computadora puede verse afectado en la velocidad de reacciones del hardware.

- #### Núcleos monolíticos:

    Es un gran núcleo informático para todas las tareas del sistema. Es de tipo no modular y puede alcanzar un mayor rendimiento que un microkernel, por lo que deben incorporar canales de interrupción y demás operadores de hardware. El núcleo de LInux es monolítico, por lo que los programas tienen mayor acceso al hardware y mantienen mejor comunicación entre sí

- #### Núcleos híbridos:

    Incluyen un código adicional en el núcleo para que se ejecuten tareas más rápidamente. Se puede elegir qué acciones ejecutar en modo usuario, y cuáles en modo supervisor. 

&nbsp;

### Modo Usuario vs Modo Kernel


| Modo Usuario   | Modo Kernel |
|-------------------------------|-----------|
| Es un modo restringido, en el cuál los programas se ejecutan y se inician     | Es el modo privilegiado, al que ingresa la computadora cuando se accede a los recursos del hardware |
| Es considerado como el modo esclavo o el modo restringido   | Es el modo sistema, modo maestro o modo privilegiado |
| En el modo usuario un proceso obtiene su propio espacio de direcciones | En el modo kernel los procesos obtienen una solo espacio de direcciones |
| Si una interrupción ocurre, solo un proceso falla  | Si una interrupción ocurre, todo el sistema operativo puede fallar.   |


