enum categories { All, Popular, Recent, Recommended }
categories selectedCategory = categories.All;

class Categorycls {
  Categorycls({this.label, this.enumCat});
  String? label;
  categories? enumCat;
}

List listOfCategories = [
  Categorycls(
    label: 'All',
    enumCat: categories.All,
  ),
  Categorycls(
    label: 'Popular',
    enumCat: categories.Popular,
  ),
  Categorycls(
    label: 'Recent',
    enumCat: categories.Recent,
  ),
  Categorycls(
    label: 'Recommended',
    enumCat: categories.Recommended,
  ),
];
