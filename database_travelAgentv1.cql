CREATE DATABASE TravelAgent

CREATE (p1:País {nombre: 'Argentina'})
CREATE (p2:País {nombre: 'Brasil'})
CREATE (p3:País {nombre: 'Chile'})
CREATE (p4:País {nombre: 'España'})
CREATE (p5:País {nombre: 'Francia'})
CREATE (p6:País {nombre: 'Italia'})
CREATE (p7:País {nombre: 'Estados Unidos'}) 
CREATE (p8:País {nombre: 'Canadá'})
CREATE (p9:País {nombre: 'México'})
CREATE (p10:País {nombre: 'Australia'})
CREATE (p11:País {nombre: 'Colombia'}) 
CREATE (p12:País {nombre: 'Belgica'}) 
CREATE (p13:País {nombre: 'Tailandia'})
CREATE (p14:País {nombre: 'Alemania'})
CREATE (p15:País {nombre: 'China'})
CREATE (p16:País {nombre: 'Japón'})

CREATE (d1:Destino {ciudad: 'Buenos Aires', presupuesto: 1000, personalidad: ['extrovertido'], actividades: ['turismo', 'compras']})
CREATE (d2:Destino {ciudad: 'Río de Janeiro', presupuesto: 1500, personalidad: ['extrovertido', 'aventurero'], actividades: ['playa', 'deportes acuáticos']})
CREATE (d3:Destino {ciudad: 'Santiago', presupuesto: 800, personalidad: ['intelectual', 'introvertido'], actividades: ['museos', 'lectura']})
CREATE (d4:Destino {ciudad: 'Barcelona', presupuesto: 1200, personalidad: ['extrovertido', 'aventurero'], actividades: ['gastronomía', 'vida nocturna']})
CREATE (d5:Destino {ciudad: 'París', presupuesto: 2000, personalidad: ['intelectual'], actividades: ['museos', 'arte']})
CREATE (d6:Destino {ciudad: 'Roma', presupuesto: 1800, personalidad: ['aventurero'], actividades: ['historia', 'arquitectura']})
CREATE (d7:Destino {ciudad: 'Nueva York', presupuesto: 2500, personalidad: ['extrovertido'], actividades: ['compras', 'vida nocturna']})
CREATE (d8:Destino {ciudad: 'Toronto', presupuesto: 1800, personalidad: ['introvertido'], actividades: ['museos', 'naturaleza']})
CREATE (d9:Destino {ciudad: 'Cancún', presupuesto: 2000, personalidad: ['aventurero'], actividades: ['playa', 'deportes acuáticos']})
CREATE (d10:Destino {ciudad: 'Sídney', presupuesto: 2200, personalidad: ['extrovertido'], actividades: ['playa', 'aventuras extremas']})
CREATE (d16:Destino {ciudad: 'Madrid', presupuesto: 1400, personalidad: ['extrovertido', 'aventurero'], actividades: ['gastronomía', 'fiestas']})
CREATE (d17:Destino {ciudad: 'Berlín', presupuesto: 1600, personalidad: ['intelectual'], actividades: ['historia', 'museos']})
CREATE (d18:Destino {ciudad: 'Pekín', presupuesto: 2000, personalidad: ['aventurero'], actividades: ['cultura', 'arquitectura']})
CREATE (d19:Destino {ciudad: 'Tokio', presupuesto: 2200, personalidad: ['extrovertido'], actividades: ['tecnología', 'compras']})
CREATE (d20:Destino {ciudad: 'Tokio', presupuesto: 2200, personalidad: ['extrovertido'], actividades: ['tecnología', 'compras']})


CREATE (p1)-[:TIENE_DESTINO]->(d1)

CREATE (p2)-[:TIENE_DESTINO]->(d2)

CREATE (p3)-[:TIENE_DESTINO]->(d3)

CREATE (p4)-[:TIENE_DESTINO]->(d4)
CREATE (p4)-[:TIENE_DESTINO]->(d16)

CREATE (p5)-[:TIENE_DESTINO]->(d5)

CREATE (p6)-[:TIENE_DESTINO]->(d6)

CREATE (p7)-[:TIENE_DESTINO]->(d7)

CREATE (p8)-[:TIENE_DESTINO]->(d8)

CREATE (p9)-[:TIENE_DESTINO]->(d9)

CREATE (p10)-[:TIENE_DESTINO]->(d10)

CREATE (p11)-[:TIENE_DESTINO]->()

CREATE (p12)-[:TIENE_DESTINO]->()

CREATE (p13)-[:TIENE_DESTINO]->()

CREATE (p14)-[:TIENE_DESTINO]->(d17)

CREATE (p15)-[:TIENE_DESTINO]->(d18)

CREATE (p16)-[:TIENE_DESTINO]->(d19)
