/*--------------- aggiornare una prenotazione in ogni aspetto rilevante ------------------*/

UPDATE prenotazione SET data = "altra-data" WHERE numero = 0000;

UPDATE prenotazione SET posti = 0000 WHERE numero = 0000;

UPDATE prenotazione SET fuori = 0 WHERE numero = 0000;

UPDATE prenotazione SET fuori = 1 WHERE numero = 0000;

UPDATE prenotazione SET telefono-prenotante = "nuovo-telefono" WHERE numero = 0000;

UPDATE prenotazione SET orario = "nuovo" WHERE numero = 0000;

/*----------- oppure con dei delete a cancellare la vecchia seguiti da degli insert nuovi ------------*/

DELETE prenotazione WHERE numero = 0000;

