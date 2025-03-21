/****************************/
/* Blake's 7: the Oric game */
/* Using OASIS              */
/* (c) Chema - 2016         */
/* Traduction FR:laurentd75	*/
/****************************/

#include "globals.h"

/* Object command script and strings */

objectcode SANDWICH
{
	Use:		
		// If something is being used with the
		// sandwich, it must be the 2nd object
		if(sfGetActionObject2()==SANDWICH)
		{
			// Is the player trying to putc
			// laxative on the sandwich?
			if (sfGetActionObject1()==LAXATIVE)
			{
				scCursorOn(false);
				scActorTalk(BLAKE,SANDWICH,4);
				scWaitForActor(BLAKE);
				scActorTalk(BLAKE,SANDWICH,5);
				scWaitForActor(BLAKE);
				scSetState(SANDWICH,1); // Mark sandwich as poisoned
				scRemoveFromInventory(LAXATIVE);
				scRemoveObjectFromGame(LAXATIVE);
				scCursorOn(true);
			}
			else
			{
				// Indicate this is no use
				scActorTalk(BLAKE,SANDWICH,6);
				scWaitForActor(BLAKE);
			}
			//scStopScript();
		}
		else
		{
			scCursorOn(false);
			scActorTalk(BLAKE,SANDWICH,3);
			scWaitForActor(BLAKE);
			scCursorOn(true);
		}
		scStopScript();

	LookAt: 	
		scCursorOn(false);
		if(sfGetState(SANDWICH)==1)
		{
			scActorTalk(BLAKE,SANDWICH,7);
			scWaitForActor(BLAKE);
		}
		else
		{				
			scActorTalk(BLAKE,SANDWICH,0);
			scWaitForActor(BLAKE);
			scActorTalk(BLAKE,SANDWICH,1);
			scWaitForActor(BLAKE);
			scActorTalk(BLAKE,SANDWICH,2);
			scWaitForActor(BLAKE);

		}
		scCursorOn(true);		
		scStopScript();
	PickUp:
		scPutInInventory(SANDWICH);	
}

stringpack SANDWICH
{
#ifdef ENGLISH
	/*
	xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx */
	"The only food I can eat.";
	"I promised Ravella.";
	"But I hate cheese.";
	"I'm hungry, but not THAT much.";
	"That is an EVIL idea...";
	"I LOVE it.";
	"What would be the use of that?";
	
	"It doesn't look THAT lethal.";
#endif
#ifdef FRENCH
	/*
	xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx */
	///// [laurentd75]: CAUTION: following 3 sentences also defined in "blakesroom.os"
	///// [laurentd75]: Note: In fact, the sandwich is the only food Blake can eat because 
	/////               it is the only food that is not contaminated with Federation drugs (suppressants)
	/////"La seule nourriture que je peux avaler."; // ou: "La seule chose que je puisse manger.";
	///// "Le seul repas auquel j'ai droit."; // aliment, pitance, nourriture, mets, aliment, denrée, repas
	"La seule chose que je puisse manger.";
	"Je l'ai promis à Ravella.";
	"Mais je déteste le fromage.";
	"J'ai faim, mais PAS A CE POINT...";
	"Ca, c'est une idée DIABOLIQUE...";
	"J'ADORE.";
	"A quoi cela servirait-il?";
	"Ca n'a pas l'air SI mortel que ça.";
#endif
#ifdef SPANISH
	/*
	xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx */
	"Lo único que puedo comer.";
	"Se lo prometí a Ravella.";
	"Pero odio el queso.";
	"Tengo hambre, pero no tanta.";
	"Es una idea MALVADA...";
	"Me encanta.";
	"¿De qué iba a servir?";	
	"No parece TAN letal.";
#endif
}

