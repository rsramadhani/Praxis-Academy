main() {
Set aColor = new Set.from(["hijau","biru","merah"]);
Set bColor = new Set.from(["kuning","hijau","biru"]);

Set abColor = bColor.intersection(aColor); // menghasilkan hijau, biru

for(String color in abColor) {
  print(color);
}
}