#include "CacheSim.h"
#include <stdio.h>

/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */

typedef struct {
	unsigned int v; //bit de validez
	int tag;
	unsigned int d; //dirty bit;
} lin_cache;

lin_cache cache[128];

int num_hits = 0;
int num_miss = 0;
int num_wr = 0;


/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al comen�ar cada un dels tests.
 * */
void init_cache ()
{
	/* Escriu aqui el teu codi */
	for (int i = 0; i < 128; i++) {
		cache[i].v = 0; 
		cache[i].d = 0;
	}


}

/* La rutina reference es cridada per cada referencia a simular */ 
void reference (unsigned int address, unsigned int LE)
{
	unsigned int byte;
	unsigned int bloque_m; 
	unsigned int linea_mc;
	unsigned int tag;
	unsigned int miss;
	unsigned int lec_mp;
	unsigned int mida_lec_mp;
	unsigned int esc_mp;
	unsigned int mida_esc_mp;
	unsigned int replacement;
	unsigned int tag_out;

	/* Escriu aqui el teu codi */
	byte = address % 32;
	bloque_m = address / 32;
	linea_mc = bloque_m % 128;
	tag = bloque_m / 128;

	miss = false;
	replacement = false;
	tag_out = 0;

	lec_mp = false;
	esc_mp = false;


	if (cache[linea_mc].v == 1) {
		
		// Coincideix el TAG --> HIT
		if (cache[linea_mc].tag == tag) { 
			
			miss = 0;
			++num_hits;
			
			// LECTURA: No es llegeix de MP
			
			// ESCRIPTURA: Només escrivim a la MC -> Dirty = 1
			if (LE == escriptura) {
				cache[linea_mc].d = 1;
			}
		}
		
		// NO coincideix el TAG --> MISS
		else {
			miss = 1; 
			++num_miss;
			replacement = 1; // Reemplaçar en tots els casos (dada antiga vàlida)
			tag_out = cache[linea_mc].tag;
			cache[linea_mc].tag = tag;
			
			if (cache[linea_mc].d) { // Si el que reemplaçem està a dirty hem de guardar el bloc a MP
				esc_mp = 1;
				mida_esc_mp = 32;
				cache[linea_mc].d = 0;
				++num_wr;
			}
			
			// Tant si llegim com si escrivim, nomès ho farem a MC
			
			// LECTURA
			lec_mp = 1;
			mida_lec_mp = 32;
			
			// ESCRIPTURA
			if (LE == escriptura) cache[linea_mc].d = 1; // Posem el dirty a 1
		}
	}
	
	// Dada no valida --> MISS (primer accés)
	else {
		miss = 1; // És miss i no haurem de reemplaçar
		++num_miss;
		
		// Llegim el bloc de la MP
		lec_mp = 1;
		mida_lec_mp = 32;
		cache[linea_mc].v = 1; // Validem la data
		cache[linea_mc].tag = tag;
			
		if (LE) cache[linea_mc].d = 1;	// Si modifiquem: Dirty = 1
	}




	/* La funcio test_and_print escriu el resultat de la teva simulacio
	 * per pantalla (si s'escau) i comproba si hi ha algun error
	 * per la referencia actual
	 * */
	test_and_print (address, LE, byte, bloque_m, linea_mc, tag,
			miss, lec_mp, mida_lec_mp, esc_mp, mida_esc_mp,
			replacement, tag_out);
}

/* La rutina final es cridada al final de la simulacio */ 
void final ()
{
 	/* Escriu aqui el teu codi */ 
  printf("Aciertos: %i\nFallos: %i\nWrites MP: %i\n", num_hits, num_miss, num_wr);
  
}
