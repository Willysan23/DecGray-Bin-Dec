CIRCUITO DECODIFICADOR DE GRAY <a color="green" name="TOP"></a>
===================

<h4>Realizado por:</h4>
<p>-William Sánchez</p>
<p>-Johanel Álvarez</p>
<p>-Fabián Chacón </p>


# Descripción de funcionamiento y subsistemas #

<p>Este repositorio es un informe que contiene el desarrollo de un circuito decodificador de Gray. El circuito consta de tres subsistemas:</p>

1. Subsistema y decodificación de código Gray.
2. Subsistema de despliegue de código ingresado traducido a formato binario en luces LED.
3. Subsistema de desplieque de código ingresado y deodificado en display de 7 segmentos.

__1. Subsistema y decodificación de código Gray__

<p>Este subsistema obtiene un código binario a partir de cuatro conmutadores. La entrada del código es capturada y sincronizada con el sistema principal. Este subsitema traduce la entrada capturada a un código de Gray antes de enviarlo al siguiente subsistema.</p>

En síntesis el subsistema realiza los siguientes pasos:

1. Lectura del código binario de 4 bits.
2. Conversión del código binario a código de Gray, la conversión se realiza mediante compuertas lógicas.
3. Salida de 4 bits código de Gray para el siguiente subsistema.

<br>

__2. Subsistema de despliegue de código ingresado traducido a formato binario en luces LED__

<p>Este subsistema toma los datos en código binario y los despliega en cuatro luces LED, se refresca al menos cada 500ms</p>



<br>

__3. Subsistema de desplieque de código ingresado y deodificado en display de 7 segmentos__

<p>Este subsistema toma los datos en código binario y los depliega en un display de siete segmentos, de forma decimal. Cuenta con una tasa de refresco adecuada.</p>

# Diagrama de bloques de cada subsistema #

# Diagrama de estado de las FSM #

# Ejemplo y análisis de simulación funcional del sistema #

# Análisis de consumo de recursos de la FPGA y potencia #

# Velocidades máximas de reloj posibles en el diseño #

# Principales problemas hallados durante la elaboración y soluciones #