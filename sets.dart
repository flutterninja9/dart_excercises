// Sets are same as Lists
// The fundaemental difference is that Items of Sets are always Unique but, of List can be duplicate
// Operations like union,intersection and difference can be performed by Sets
// Can help in removal of duplicate data

void main() {
  Set<String> euCountries = {
    'Italy',
    'Russia',
    'Moscow',
  };
  Set<String> asCountries = {
    'India',
    'China',
    'Russia',
  };
  // For union
  print(euCountries.union(asCountries));
  // for intersection
  print(euCountries.intersection(asCountries));
}
