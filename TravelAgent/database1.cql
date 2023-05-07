CREATE DATABASE TravelAgent

CREATE (:Destino {pais: 'Suiza', ciudad: 'Basel', presupuesto: 1600, personalidad: ['intelectual', 'introvertido'], actividades: ['visitar monumentos', 'restaurantes', 'paseo por la naturaleza']});
CREATE (:Destino {pais: 'Brazil', ciudad: 'Rio de janeiro', presupuesto: 300, personalidad: ['aventurero', 'extrovertido'], actividades: ['fiestas', 'actividades extremas', 'parques']});
CREATE (:Destino {pais: 'Estados Unidos', ciudad: 'Orlando', presupuesto: 1000, personalidad: ['aventurero', 'introvertido', 'extrovertido'], actividades: ['parques', 'restaurantes', 'Disney']});
CREATE (:Destino {pais: 'Francia', ciudad: 'Paris', presupuesto: 1200, personalidad: ['intelectual', 'introvertido'], actividades: ['visitar monumentos', 'restaurantes', 'torre eiffel']});
CREATE (:Destino {pais: 'Francia', ciudad: 'Versalles', presupuesto: 1200, personalidad: ['aventurero', 'introvertido'], actividades: ['islas', 'restaurantes', 'torre eiffel']});

CREATE (:Persona {usuario: 'Joaquin22', password: '1234', pais: 'Suiza', presupuesto: 1800, personalidad: 'intelectual', actividad: 'visitar monumentos'});
CREATE (:Persona {usuario: 'Maria2016', password: 'soyyo', pais: 'Estados Unidos', presupuesto: 1600, personalidad: 'aventurero', actividad: 'parques'});
CREATE (:Persona {usuario: 'Julio2311', password: 'jajas', pais: 'Francia', presupuesto: 2000, personalidad: 'introvertido', actividad: 'restaurantes'});

MATCH (d:Destino {pais: 'Suiza', presupuesto: 'Basel'})
MATCH (p:Persona {usuario: 'Joaquin22'})
CREATE (p)-[:LE_GUSTA {presupuesto: p.presupuesto, actividad: p.actividad}]->(d);

MATCH (d:Destino {pais: 'Estados Unidos', ciudad: 'Orlando'})
MATCH (p:Persona {usuario: 'Maria2016'})
CREATE (p)-[:LE_GUSTA {presupuesto: p.presupuesto, actividad: p.actividad}]->(d);

MATCH (d:Destino {pais: 'Francia'})
MATCH (p:Persona {usuario: 'Julio2311'})
CREATE (p)-[:LE_GUSTA {presupuesto: p.presupuesto, actividad: p.actividad}]->(d);

MATCH (p:Persona)-[:LE_GUSTA]->(d:Destino)
RETURN p, d;
