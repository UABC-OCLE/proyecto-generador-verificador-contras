#include <stdio.h>
#include <stdlib.h>
#include <time.h>

extern int buscar_mayuscula(char *cadena);
extern int buscar_minuscula(char *cadena);
extern int buscar_digito(char *cadena);
extern int buscar_caracter(char *cadena);
extern int longitud(char *cadena);
void generador_contrasena(void);
void evaluacion_contrasena(void);

int main(void){
    int opcion;

    do{
        printf("****** Menu ******\n");
        printf("[1] Generador de contrasena.\n");
        printf("[2] Verificador de contrasena.\n");
        printf("[3] Salir del programa.\n");
        printf("Ingresa tu eleccion:");
        scanf("%d", &opcion);
        getchar(); // Limpiar el buffer de entrada

        switch(opcion) {
            case 1:
                generador_contrasena();
                break;
            case 2:
                evaluacion_contrasena();
                break;
            case 3:
                printf("Cerrando programa\n");
                break;
            default:
                printf("Valor invalido\n");
        }
    } while(opcion != 3);

    return 0;
}

void generador_contrasena(void){
    srand(time(NULL));
    int numero = rand() % 9;
    int valor;
    numero+=15;
    char buffer[numero];
    for(int i=0; i<numero; i++){
        valor=0;
        valor = rand() % 95;
        buffer[i]= valor+=32;
    }
    buffer[numero-1]='\0';
    printf("La contrasena generada es: %s \n",buffer);
}

void evaluacion_contrasena(void){
    char buffer[256];
    printf("Ingresa la contrasena a evaluar:");
    fgets(buffer,256,stdin);
    printf("Nivel de seguridad ");

    int mayuscula_presente = buscar_mayuscula(buffer);
    int minuscula_presente = buscar_minuscula(buffer);
    int digito_presente = buscar_digito(buffer);
    int caracter_especial_presente = buscar_caracter(buffer);
    int tamano=longitud(buffer);

    int seguridad;

    if (tamano && mayuscula_presente && minuscula_presente && digito_presente && caracter_especial_presente) {
        seguridad = 3; // Alta
    } else if ((mayuscula_presente + minuscula_presente + digito_presente + caracter_especial_presente >= 3) && tamano) {
        seguridad = 2; // Media
    } else {
        seguridad = 1; // Baja
    }

    switch(seguridad) {
        case 1:
            printf("Baja\n");
            break;
        case 2:
            printf("Media\n");
            break;
        case 3:
            printf("Alta\n");
            break;
    }
}
