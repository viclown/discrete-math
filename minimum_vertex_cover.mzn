int: num_nodes;

int: num_edges;
array[1..num_edges,1..2] of 1..num_nodes: E;

array[1..num_nodes] of var 0..1: x;


array[1..num_nodes] of int: w = [1 | i in 1..num_nodes];

var int: z = sum(i in 1..num_nodes) (w[i]*x[i]);

solve minimize z;

constraint
   forall(i in 1..num_edges) (
       x[E[i,1]] + x[E[i,2]] >= 1
   )
;

num_nodes = 43;
num_edges = 87;

int: Albania = 1;
int: Greece = 2;
int: Montenegro = 3;
int: NorthernMacedonia = 4;
int: Serbia = 5;
int: Andorra = 6;
int: France = 7;
int: Spain = 8;
int: Austria = 9;
int: CzechRepublic = 10;
int: Germany = 11;
int: Hungary = 12;
int: Italy = 13;
int: Liechtenstein = 14;
int: Slovakia = 15;
int: Slovenia = 16;
int: Switzerland = 17;
int: Belarus = 18;
int: Latvia = 19;
int: Lithuania = 20;
int: Poland = 21;
int: Russia = 22;
int: Ukraine = 23;
int: Belgium = 24;
int: Luxemburg = 25;
int: Netherlands = 26;
int: BosniaandHerzegovina = 27;
int: Croatia = 28;
int: Bulgaria = 29;
int: Romania = 30;
int: Turkey = 31;
int: Denmark = 32;
int: Sweden = 33;
int: Estonia = 34;
int: Finland = 35;
int: Norway = 36;
int: Monaco = 37;
int: Ireland = 38;
int: UnitedKingdom = 39;
int: SanMarino = 40;
int: VaticanCity = 41;
int: Moldova = 42;
int: Portugal = 43;

E = array2d(1..num_edges, 1..2, 
[
Albania, Greece,
Albania, Montenegro,
Albania, NorthernMacedonia,
Albania, Serbia,
Andorra, France,
Andorra, Spain,
Austria, CzechRepublic,
Austria, Germany,
Austria, Hungary,
Austria, Italy,
Austria, Liechtenstein,
Austria, Slovakia,
Austria, Slovenia,
Austria, Switzerland,
Belarus, Latvia,
Belarus, Lithuania,
Belarus, Poland,
Belarus, Russia,
Belarus, Ukraine,
Belgium, Germany,
Belgium, France,
Belgium, Luxemburg,
Belgium, Netherlands,
BosniaandHerzegovina, Croatia,
BosniaandHerzegovina, Montenegro,
BosniaandHerzegovina, Serbia,
Bulgaria, Greece,
Bulgaria, NorthernMacedonia,
Bulgaria, Serbia,
Bulgaria, Romania,
Bulgaria, Turkey,
Croatia, Hungary,
Croatia, Montenegro,
Croatia, Serbia,
Croatia, Slovenia,
CzechRepublic, Germany,
CzechRepublic, Poland,
CzechRepublic, Slovakia,
Denmark, Germany,
Denmark, Sweden,
Estonia, Latvia,
Estonia, Russia,
Finland, Norway,
Finland, Sweden,
Finland, Russia,
France, Germany,
France, Italy,
France, Luxemburg,
France, Monaco,
France, Spain,
France, Switzerland,
Germany, Luxemburg,
Germany, Netherlands,
Germany, Poland,
Germany, Switzerland,
Greece, NorthernMacedonia,
Greece, Turkey,
Hungary, Serbia,
Hungary, Slovakia,
Hungary, Slovenia,
Hungary, Ukraine,
Ireland, UnitedKingdom,
Italy, SanMarino,
Italy, Slovenia,
Italy, Switzerland,
Italy, VaticanCity,
Latvia, Lithuania,
Latvia, Russia,
Liechtenstein, Switzerland,
Lithuania, Poland,
Lithuania, Russia,
NorthernMacedonia, Serbia,
Moldova, Romania,
Moldova, Ukraine,
Montenegro, Serbia,
Norway, Sweden,
Norway, Russia,
Poland, Slovakia,
Poland, Russia,
Poland, Ukraine,
Portugal, Spain,
Romania, Serbia,
Romania, Ukraine,
Russia, Ukraine,
Slovakia, Ukraine,
UnitedKingdom, France,
Romania, Hungary]);


output
[
 "x: " ++ show(x) ++ "\n" ++
 "z: " ++ show(z) 
];