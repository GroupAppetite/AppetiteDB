/* PRENOTAZIONI , RISTORANTE , PROPRIETARIO .... Gestione relazione tra ristorante e propietario.
1) db
2) schema er
3) documentazione
4) query tutte le prenotazioni per ristorante
5) altre query PRINCIPALI:
	a) visualizzare ristorante di un proprietario
	b) visualizzare prenotazioni ad una certa ora (filtra)
	c) visualizzare prenotazioni all esterno
	d) insert in caso di coglioni che chiamano da telefono. (AGGIUNGI)
	e) comando delete quando si clicca su rifiuta , o rivedi prenotazione(per accordarsi) 
	... in questo caso si invia una notifica al cliente
*/



/* tabella ristorante  con esempio di insert */
create table ristorante(
	mail varchar(60) not null primary key,
	password varchar(40) not null,
	citta varchar(30) not null,
	nome_r varchar(40) not null,
	fuori boolean not null,
	pranzo boolean not null,
	descrizione varchar(250) not null,
	indirizzo varchar(45) not null,
	fascia_prezzo varchar(7) not null,
	contanti boolean not null,
	carte boolean not null,
	bancomat boolean not null,
	foto1 varchar(200),
	foto2 varchar(200),
	foto3 varchar(200)
);

/* insert esempio */
INSERT INTO ristorante VALUES("a", "a", "Roma","risto",1, 1, "belo belo" , "via strada" ,"alta",1,1,1);


/* tabella prenotazione */
create table prenotazione(
	numero int not null auto_increment primary key,
	data date not null,
	nome varchar(20) not null,
	cognome varchar(20) not null,
	posti tinyint not null,
	fuori boolean not null,
	telefono-prenotante varchar(15),
	orario varchar(5) not null,
	stato_p boolean not null,
	mail varchar(60) not null,
	foreign key (mail) references ristorante(mail) on update cascade on delete no action
);

/* insert esempio */
INSERT INTO prenotazione VALUES(6, "2016-10-1", "mario","rossi",4, 1, "333333333" , "21:00",0,"a");
INSERT INTO prenotazione VALUES(7, "2016-10-1", "mario2","rossi2",5, 1, "333333333" , "21:00",0 ,"a");
INSERT INTO prenotazione VALUES(8, "2016-10-1", "mario3","rossi3",4, 1, "333333333" , "20:00",0 ,"a");
INSERT INTO prenotazione VALUES(9, "2016-10-1", "mario4","rossi4",22, 1, "333333333" , "22:00",0 ,"a");
INSERT INTO prenotazione VALUES(10, "2016-10-1", "mario5","rossi5",4, 1, "333333333" , "21:00",0 ,"a");


