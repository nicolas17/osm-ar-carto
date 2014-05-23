#continent {
  [place = 'continent'][zoom >= 1][zoom < 3] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #9d6c9d;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
}

.country {
  [place = 'country'][zoom >= 2][zoom < 6] {
    text-name: "[name]";
    text-size: 18;
    text-fill: #333;
    text-face-name: @book-fonts;
    text-halo-radius: 4;
    text-wrap-width: 20;
    [zoom >= 4] {
      text-size: 11;
    }
  }
}

.state {
  [place = 'state'][zoom >= 4][zoom < 9] {
    text-name: "[ref]";
    text-size: 19;
    text-fill: #000;
    text-face-name: @oblique-fonts;
    text-halo-radius: 2;
    text-wrap-width: 0;
    [zoom >= 5] {
      text-name: "[name]";
    }
    [zoom >= 7] {
      text-size: 15;
    }
  }
}

#placenames-capital {
  [zoom >= 5][zoom < 15] {
    text-name: "[name]";
    text-size: 12;
    text-fill: #000;
    text-face-name: @book-fonts;
    text-halo-radius: 3;
    [zoom >= 6] {
      text-size: 11;
    }
    [zoom >= 11] {
      text-size: 14;
    }
  }
}

#placenames-medium::city {
  [place = 'city'],
  [place = 'metropolis'] {
    [zoom >= 6][zoom < 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 3;
      [zoom >= 9] {
        text-size: 11;
      }
      [zoom >= 11] {
        text-size: 14;
      }
    }
  }
}

#placenames-medium::town {
  [place = 'town'],
  [place = 'large_town'],
  [place = 'small_town'] {
    [zoom >= 9] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
    }
    [zoom >= 11] {
      text-size: 13;
    }
    [zoom >= 12] {
      text-size: 14;
    }
    [zoom >= 14] {
      text-size: 16;
      text-fill: #444;
    }
  }
}

#placenames-small::suburb {
  [place = 'suburb'][zoom >= 12] {
    text-name: "[name]";
    text-size: 11;
    text-fill: #000;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    [zoom >= 14] {
      text-size: 13;
      text-fill: #444;
    }
  }
}

#placenames-small::village {
  [place = 'village'],
  [place = 'large_village'] {
    [zoom >=12] {
      text-name: "[name]";
      text-size: 11;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      [zoom >= 15] {
        text-size: 12;
        text-fill: #444;
      }
    }
  }
}

#placenames-small::hamlet {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 16] {
      text-size: 12;
      text-fill: #444;
    }
  }
}
