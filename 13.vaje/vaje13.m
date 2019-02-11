#1.NALOGA
podatki= dlmread('kolokviji.csv', ',') #uvoz

vsota = sum(podatki, 2) #vrsicna vsota

povprecje = round(mean(podatki, 2)) #vrsticno povprecje

#ocene iz povprecij
ocene = izracunaj_oceno(povprecje)

#stolpec 
zaporedje = (1: length(ocene))'

#matrika
rezultat = [zaporedje, podatki, vsota, povprecje, ocene]

#zapišemov rezultate (loceni z vejico)
dlmwrite("rezultat.csv", rezultat, ',')

#podatkovni tipi
disp('Tip rezultata')
class(rezultat)

disp('Tipi stolpcev')
class(podatki)
class(vsota)
class(povprecje)
class(zaporedje)
class(ocene)

#2.NALOGA
#histogram
hist(ocene); 

#paketi
pkg install -forge io
pkg install -forge statistics
pkg load statistics

frekvence = tabulate(ocene)

izracunaj = @(n) length(ocene(ocene==n))
arrayfun(izracunaj, 6:10) # kot map

##tip rezultata frekvence
class(frekvence)

#stolpièni diagram
bar(6:10, frekvence(6:10, 3))

#grafikon
slika = figure()
bar(6:10, frekvence(6:10, 3), 'facecolor', 'r', 'edgecolor', 'b')
title('Porazdelitev ocen kolokvija')
xlabel ("Ocene");
ylabel ("Stevilo studentov");
text (10, 10, "Bravo!");
print(slika, 'slika.pdf')

#3. NALOGA
N = narascajoca(4)

#5. NALOGA
A = rand(2)
B = rotacija(A)

