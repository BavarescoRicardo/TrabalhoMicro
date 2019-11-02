#include <xc.h>
#include <stdlib.h>
#include <string.h>

// Configura��o dos Fuses do Microcontrolador.
#define _XTAL_FREQ	   18432000 // Cristal de 18432 MHz.
#pragma config FOSC  = HS   	// Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN).
#pragma config WDTE  = OFF  	// Watchdog Timer Enable bit (WDT disabled).
#pragma config PWRTE = ON   	// Power-up Timer Enable bit (PWRT enabled).
#pragma config BOREN = OFF		// Brown-out Detect Enable bit (BOD disabled).
#pragma config LVP   = OFF  	// Low-Voltage Programming Enable bit (RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming).
#pragma config CPD   = OFF  	// Data EE Memory Code Protection bit (Data memory code protection off).
#pragma config CP    = OFF  	// Flash Program Memory Code Protection bit (Code protection off).

//Declara��o de Constantes
#define LCDBus	PORTD			// Barramento onde o LCD est� conectado.
#define RS 		PORTEbits.RE0	// Pino de Ativa��o dos Modos Comando/Dado.
#define EN 		PORTEbits.RE1	// Pino para a Efetiva��o (Pulso Clock) do Comando/Dado passado ao LCD.

// Vari�veis globais do sistema
unsigned short ADCResult = 0;
float input = 0;
int status = 0;
unsigned char *display;

//-----------------------------------------------------------------------------
void LCD_Cursor(unsigned char Row, unsigned char Col)
{
	RS = 0; // Envia n�vel baixo para o pino RS.
	
	if (Row == 0)
	{
		LCDBus = 0x80 + Col; 
	}
	else
	{
		LCDBus = 0xC0 + Col;
	}	

	// Pulso para o pino EN do Display.
	EN = 1;	// Envia n�vel alto para o pino EN.

	__delay_us(40);

	EN = 0;	// Envia n�vel baixo para o pino EN.
}

//-----------------------------------------------------------------------------
void LCD_WriteCmd(unsigned char Byte)
{
	RS = 0; // Envia n�vel baixo para o pino RS.

	LCDBus = Byte;

	// Pulso para o pino EN do Display.
	EN = 1;	// Envia n�vel alto para o pino EN.

	__delay_us(40);

	EN = 0;	// Envia n�vel baixo para o pino EN.
}

//-----------------------------------------------------------------------------
void LCD_WriteData(unsigned char Byte)
{	
	RS = 1;				// Ativa��o do pino RS para envio de dados.

	LCDBus = Byte;		// Atribui��o do Byte para o barramento do LCD.

	EN = 1;				// Envia n�vel alto para o pino EN do Display.

	__delay_us(40);		// Tempo necess�rio para efetiva��o do comando/dado.

	EN = 0;				// Envia n�vel baixo para o pino EN do Display.
}

//-----------------------------------------------------------------------------
void LCD_WriteString(const char *Str)
{
	//strcat(*Str,'%');
	while(*Str != '\0')			// Envio da string para o LCD.
  	{
    	LCD_WriteData(*Str);	// Envio da string byte a byte.
      	Str++;
							// Incrmento da posi��o do ponteiro.
  	}
	
	
}

//-----------------------------------------------------------------------------
void LCD_Clear()
{
	LCD_WriteCmd(0x01); // Comando para limpar o display.

	__delay_ms(2); 

	LCD_WriteCmd(0x0C); // Comando para o controle da visualiza��o dos caracteres no Display e do Cursor.

	__delay_us(40); 

	LCD_WriteCmd(0x06); // Modo de Opera��o. Deslocamento autom�tico do cursor para a direita.

	__delay_us(40);
}

//-----------------------------------------------------------------------------
void LCD_Init()
{

/*
		// Configura��o necessaria para o PORTE como sa�da digital (conex�o f�sica na placa).
	ADCON1bits.PCFG3 = 0;
	ADCON1bits.PCFG2 = 1;
	ADCON1bits.PCFG1 = 0;
	ADCON1bits.PCFG0 = 0;

	__delay_ms(15);

	LCD_WriteCmd(0x30); 	// Comando de inicializa��o do display.
	__delay_ms(4); 

	LCD_WriteCmd(0x30); 	// Comando de inicializa��o do display.
	__delay_us(100); 

	LCD_WriteCmd(0x30); 	// Comando de inicializa��o do display.
	__delay_us(40); 

	LCD_WriteCmd(0x38); 	// Comando para configurar o display para 8 vias, duas linhas e matriz de 7x5.
	__delay_us(40); 

	LCD_WriteCmd(0x01); 	// Comando para limpar o display.
	__delay_ms(2); 

	LCD_WriteCmd(0x0C);		// Comando para o controle da visualiza��o dos caracteres no Display e do Cursor.
	__delay_us(40); 

	LCD_WriteCmd(0x06); 	// Modo de Opera��o. Deslocamento autom�tico do cursor para a direita.
	__delay_us(40); 
}
*/
	__delay_ms(15);

	LCD_WriteCmd(0x30); 	// Comando de inicializa��o do display.
	__delay_ms(4); 

	LCD_WriteCmd(0x30); 	// Comando de inicializa��o do display.
	__delay_us(100); 

	LCD_WriteCmd(0x30); 	// Comando de inicializa��o do display.
	__delay_us(40); 

	LCD_WriteCmd(0x38); 	// Comando para configurar o display para 8 vias, duas linhas e matriz de 7x5.
	__delay_us(40); 

	LCD_WriteCmd(0x01); 	// Comando para limpar o display.
	__delay_ms(2); 

	LCD_WriteCmd(0x0C);		// Comando para o controle da visualiza��o dos caracteres no Display e do Cursor.
	__delay_us(40); 

	LCD_WriteCmd(0x06); 	// Modo de Opera��o. Deslocamento autom�tico do cursor para a direita.
	__delay_us(40); 
}

//-----------------------------------------------------------------------------

void ADC_Init()
{
	// Configura��o necessaria para o PORTE como sa�da digital (conex�o f�sica na placa).
	ADCON1bits.ADFM  = 1;
	ADCON1bits.PCFG3 = 0;
	ADCON1bits.PCFG2 = 1;
	ADCON1bits.PCFG1 = 0;
	ADCON1bits.PCFG0 = 0;

	// Configura��o da frequ�ncia de trabalho do conversor.
	ADCON0bits.ADCS1 = 1;
	ADCON0bits.ADCS0 = 0;

	// Configura��o dos registradores PIE1 e PIR1 para a interrup��o.
	PIE1bits.ADIE = 0;
	PIR1bits.ADIF = 0;
}

//-----------------------------------------------------------------------------

void ADC_Read(unsigned short channel)
{
	ADCON0bits.CHS 	= channel;	// Configura/l� o canal ANx.
	ADCON0bits.ADON = 1;		// Ativa o m�dulo do conversor A/D.

	__delay_us(25);				// Tempo requerido para a convers�o.

	ADCON0bits.GO 	= 1;		// Ativando o sistema de convers�o.
	while(ADCON0bits.GO);		// Espera at� que a amostra seja convertida.
	
	PIR1bits.ADIF 	= 0;		// Limpa a flag para uma nova convers�o.
}

//-----------------------------------------------------------------------------

void interrupt ISR(void)
{
	// Verifica se a interrup��o foi causada pela convers�o A/D.
	if (PIR1bits.ADIF == 1)
	{
		/*
		            
		ADCResult = ((ADRESH << 8) + ADRESL); // Valor entre 0 e 1023.
		input = ADCResult * 0.00488758553275;
		display = ftoa(input, &status);
		
		LCD_Clear();
		LCD_Cursor(0,0);
		LCD_WriteString("Canal 0: ");
		LCD_Cursor(0,8);
		LCD_WriteString(display);

		PIR1bits.ADIF 	= 0;		// Limpa a flag para uma nova convers�o.

		*/
	}
}

//-----------------------------------------------------------------------------

void main(void)
{
    TRISA	= 0b00011111;	// Configura��o dos canais anal�gicos do PORTA.
    PORTA	= 0b00000000;  	// Inicializa��o dos canais anal�gicos do PORTA.
    TRISB	= 0b00000000;	// Configura��o das entradas/sa�das do PORTB.
    PORTB	= 0b00000000;  	// Inicializa��o das entradas/sa�das do PORTB.
	TRISC	= 0b00000000;	// Configura��o das entradas/sa�das do PORTC.
    PORTC	= 0b00000000;  	// Inicializa��o das entradas/sa�das do PORTC.
    TRISD	= 0b00000000;	// Configura��o das entradas/sa�das do PORTD.		
    PORTD	= 0b00000000;  	// Inicializa��o das das entradas/sa�das do PORTD.
    TRISE	= 0b00000000;	// Configura��o dos canais anal�gicos do PORTE.
    PORTE	= 0b00000000;  	// Inicializa��o dos canais anal�gicos do PORTE.

	ADC_Init();				// Incializar o conversor A/D.
	
	LCD_Init();								// Inicializa��o do LCD.
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	
	__delay_ms(1000);				// Inicializa��o do LCD.

	INTCONbits.PEIE = 1;	// Inicializa��o de Perif�ricos.
	INTCONbits.GIE	= 1;	// Chave Global de Perif�ricos.
							
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	LCD_WriteString("Inicializando...");	// Escrita da string no LCD.
	
	__delay_ms(1000);
	
	while(1)	//La�o Principal.
    {		
		ADC_Read(1);	// Leitura e convers�o do canal AN0.

		ADCResult = ((ADRESH << 8) + ADRESL); 	// Valor entre 0 e 1023.
		input = ADCResult * 0.097751710655;	// Formata��o do valor em tens�o.
		/*
		if(input > 1.25)
		{
			PORTBbits.RB4 = 1;
		}else
		{
			PORTBbits.RB4 = 0;
		}

			if(input > 4.75)
		{
			PORTBbits.RB5 = 1;
			PORTBbits.RB4 = 0;
		}else
		{
			PORTBbits.RB5 = 0;
		}
		*/
		display = ftoa(input, &status);			// Formata��o para o LCD.

		LCD_Clear();
		LCD_Cursor(0,0);
	
		LCD_Cursor(0,9);
		int tam = strlen(display);
		tam -=4;
		display[tam] = '%';
	
		LCD_WriteString(display);
		
		__delay_ms(100);
    }
}