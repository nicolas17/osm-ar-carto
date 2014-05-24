#housenumbers {
  [zoom >= 17] {
    text-name: "[addr:housenumber]";
    text-placement: interior;
    text-min-distance: 0.5;
    text-wrap-width: 0;
    text-face-name: @bold-fonts;
    text-fill: #111;
    text-size: 12;
    text-halo-radius: 0.75;
  }
}

#housenames {
  [zoom >= 17] {
    text-name: "[addr:housename]";
    text-placement: interior;
    text-wrap-width: 20;
    text-face-name: @bold-fonts;
    text-size: 10;
    text-fill: #444;
    text-halo-radius: 1;
    [zoom >= 18] {
      text-size: 11;
    }
  }
}
