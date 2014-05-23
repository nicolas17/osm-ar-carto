#water-areas {
  line-opacity: 0.1;
  polygon-gamma: 0.75;
  polygon-opacity: 0.2;
  [natural = 'glacier']::natural {
    [zoom >= 6] {
      line-dasharray: 4,2;
      line-width: 1.5;
      line-color: #9cf;
      polygon-pattern-file: url('symbols/glacier.png');
      [zoom >= 8] {
        polygon-pattern-file: url('symbols/glacier2.png');
      }
    }
  }

  [waterway = 'dock'],
  [waterway = 'mill_pond'],
  [waterway = 'canal'] {
    [zoom >= 9]::waterway {
      polygon-gamma: 0.75;
      polygon-opacity: 0.5;
      polygon-fill: @water-color;
    }
  }

  [landuse = 'basin'][zoom >= 7]::landuse {
    polygon-gamma: 0.75;
    polygon-fill: @water-color;
  }

  [natural = 'lake']::natural,
  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway,
  [landuse = 'water']::water,
  [natural = 'bay']::natural {
    [zoom >= 6] {
      polygon-fill: @water-color;
      polygon-opacity: 0.5;
      polygon-gamma: 0.75;
    }
  }

  [natural = 'mud'][zoom >= 13]::natural {
    polygon-pattern-file: url('symbols/mud.png');
  }
}

#water-areas-overlay {
  [natural = 'marsh'],
  [natural = 'wetland'] {
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/marsh.png');
      polygon-opacity: 0.5;
    }
  }
}

#glaciers-text {
  [way_area >= 10000000][zoom >= 10],
  [way_area >= 5000000][way_area < 10000000][zoom >= 11],
  [way_area < 5000000][zoom >= 12] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #99f;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
}

#water-lines-casing {
  [waterway='stream'],
  [waterway='ditch'],
  [waterway='drain'] {
    [zoom >= 13] {
      line-width: 1.5;
      line-color: white;
      [waterway='stream'][zoom >= 15] {
        line-width: 2.5;
      }
    }
  }
}

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    line-color: @water-color;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

#water-lines {
  [waterway = 'weir'][zoom >= 15] {
    line-color: #aaa;
    line-width: 2;
    line-join: round;
    line-cap: round;
  }

  [waterway = 'wadi'][zoom >= 13] {
    line-color: @water-color;
    line-width: 1;
    line-dasharray: 4,4;
    line-cap: round;
    line-join: round;
    [zoom >= 16] { line-width: 2; }
  }

  [waterway = 'river'][zoom >= 12] {
    line-color: @water-color;
    line-width: 2;
    line-cap: round;
    line-join: round;
    [zoom >= 13] {
      line-width: 3;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-fill: #6699cc;
      text-spacing: 400;
      text-size: 9;
      text-halo-radius: 1;
    }
    [zoom >= 14] {
      line-width: 5;
      text-size: 10;
    }
    [zoom >= 15] {
      line-width: 6;
    }
    [zoom >= 17] {
      line-width: 10;
    }
    [zoom >= 18] {
      line-width: 12;
    }
    [tunnel = 'yes'] {
      [zoom >= 14] {
        a/line-width: 6;
        a/line-dasharray: 4,2;
        a/line-color: @water-color;
        b/line-width: 4;
        b/line-color: white;
        text-min-distance: 200;
      }
      [zoom >= 15] {
        a/line-width: 7;
      }
      [zoom >= 17] {
        a/line-width: 11;
        b/line-width: 7;
      }
      [zoom >= 18] {
        a/line-width: 13;
        b/line-width: 9;
      }
    }
  }

  [waterway = 'canal'][zoom >= 12][zoom < 14] {
    line-color: @water-color;
    line-width: 3;
    line-cap: round;
    line-join: round;
    [zoom >= 13] {
      line-width: 4;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-size: 10;
      text-placement: line;
      text-fill: black;
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [zoom >= 13][zoom < 15] {
      line-width: 1;
      line-color: @water-color;
    }
  }

  [waterway = 'stream'][zoom >= 15] {
    line-width: 2;
    line-color: @water-color;
    text-name: "[name]";
    text-size: 8;
    text-face-name: @book-fonts;
    text-fill: black;
    text-halo-radius: 1;
    text-spacing: 600;
    text-placement: line;
    [tunnel = 'yes'] {
      line-dasharray: 4,2;
      line-width: 2.4;
      a/line-width: 1.2;
      a/line-color: #f3f7f7;
    }
  }

  [waterway = 'drain'],
  [waterway = 'ditch'] {
    [zoom >= 15] {
      line-width: 1;
      line-color: @water-color;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: 8;
      text-fill: black;
      text-spacing: 600;
      text-placement: line;
      text-halo-radius: 1;
      [tunnel = 'yes'] {
        line-width: 2;
        line-dasharray: 4,2;
        a/line-width: 1;
        a/line-color: #f3f7f7;
      }
    }
  }

  [waterway = 'canal'][zoom >= 14] {
    line-width: 7;
    line-color: @water-color;
    line-join: round;
    line-cap: round;
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-placement: line;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    [zoom >= 17] { line-width: 11; }
    [tunnel = 'yes'] {
      line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: white;
      [zoom >= 17] { line-width: 7; }
    }
    [lock = 'yes'][zoom >= 17] {
      text-placement: point;
      text-wrap-width: 20;
    }
  }

  [waterway = 'derelict_canal'],
  [waterway = 'canal'][disused = 'yes'] {
    [zoom >= 12] {
      line-width: 1.5;
      line-color: #b5e4d0;
      line-dasharray: 4,4;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] {
      line-width: 2.5;
      line-dasharray: 4,6;
      text-name: "[name]";
      text-size: 9;
      text-fill: #80d1ae;
      text-face-name: @book-fonts;
      text-placement: line;
      text-spacing: 600;
      text-halo-radius: 1;
    }
    [zoom >= 14] {
      line-width: 4.5;
      line-dasharray: 4,8;
      text-size: 10;
    }
  }
}

#waterway-bridges {
  [zoom >= 14] {
    line-width: 7;
    line-color: #000;
    line-join: round;
    b/line-width: 6;
    b/line-color: @water-color;
    b/line-cap: round;
    b/line-join: round;
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-placement: line;
    text-halo-radius: 1;
    [zoom >= 17] {
      line-width: 11;
      b/line-width: 10;
    }
  }
}
