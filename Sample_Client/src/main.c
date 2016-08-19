/*
 * main.c
 *
 *  Created on: Aug 8, 2016
 *      Author: robertirwin
 */

# include    <avr/io.h>
# include    <stdlib.h>
# include    <avr/interrupt.h>
# include    <util/delay.h>
# include    <string.h>
# include	"w5500.h"
# include 	"AtMega328P_SPI.h"
# include	<stdint.h>

# define	MAXBUFFER 50
# define 	DATABUF_LEN 12

char myDEFGATEWAY[DGATE_LEN] = {0xC0, 0xA8, 0x01, 0x01}; //192.168.1.1
char myMACADDR[HWADD_LEN] = {0x90, 0xA2, 0xDA, 0x10, 0xA3, 0xD4};
char mySUBMASK[SUBMASK_LEN] = {0xFF, 0xFF, 0xFF, 0x00}; //255.255.255.0
char myIP[IP_LEN] = {0xC0, 0xA8, 0x00, 0x02}; // 192.168.0.2
char sPort[PORT_LEN] = {0x1F, 0x90}; // 8080
char dMAC[HWADD_LEN] = {0x40, 0x6C, 0x8F, 0x58, 0x56, 0xA2};
char dIP[IP_LEN] = {0xC0, 0xA8, 0x00, 0x01}; // 192.168.0.1
char dPort[PORT_LEN] = {0x15, 0xB3}; // 5555

w5500packet	 PAC;
w5500packet * pac = &PAC;

char sockID;

// initialize the data buffer
//
char * dataBuf = NULL;

int main (void)
{
	char x = 0x00;

	// *** Configure the SPI interface ***
	//
	SPI328P_MasterInit();

	// *** Initialize the structure responsible for SPI communication ***
	//
	w5500packetInit(pac, MAXBUFFER);

	// *** Configure the physical and IP layer of the hardware network stack ***
	//
	w5500SourceHWConfig(pac, myDEFGATEWAY, mySUBMASK, myMACADDR, myIP);

	// open a socket according to the UDP protocol
	//
	sockID = w5500UDPSockConfig(pac, sPort, dMAC, dIP, dPort);
	if (sockID == 0) return 0; // error opening socket

    while(1)
    {
    	x++;
    	w5500UDPsend(pac, sockID, &x, 1);
    	_delay_ms(5000);
    }

}

