/* For the main linear features, such as roads and railways. */

line-color: transparent;
@motorway-fill: #804677;
@trunk-fill: magenta;
@primary-fill: #5c2e6d;
@secondary-fill: #832e6d;
@tertiary-fill: purple;
@residential-fill: #dedede;
@residential-thin: #999;
@service-fill: #ddd;
@living-street-fill: #ccc;
@pedestrian-fill: #ededed;
@road-fill: #ddd;

@motorway-casing: #506077;
@trunk-casing: #477147;
@primary-casing: #8d4346;
@secondary-casing: #a37b48;
@tertiary-casing: #bbb;
@residential-casing: #bbb;
@service-casing: #999;
@living-street-casing: #ffffff;
@pedestrian-casing: grey;

@residential-construction: #aaa;
@service-construction: #aaa;

@motorway-tunnel-fill: lighten(@motorway-fill, 25%);
@trunk-tunnel-fill: lighten(@trunk-fill, 10%);
@primary-tunnel-fill: lighten(@primary-fill, 10%);
@secondary-tunnel-fill: lighten(@secondary-fill, 5%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: lighten(@residential-fill, 10%);

#turning-circle-casing {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    point-file: url('symbols/turning_circle-tert-casing.18.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-tert-casing.24.png');
    }
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      point-file: url('symbols/turning_circle-uncl-casing.14.png');
      point-allow-overlap: true;
      point-ignore-placement: true;
      [zoom >= 16] {
        point-file: url('symbols/turning_circle-uncl-casing.18.png');
      }
      [zoom >= 17] {
        point-file: url('symbols/turning_circle-uncl-casing.24.png');
      }
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    point-file: url('symbols/turning_circle-uncl-fill.14.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 16] {
      point-file: url('symbols/turning_circle-uncl-fill.18.png' );
    }
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-fill.24.png' );
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    point-file: url('symbols/turning_circle-uncl-casing.14.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-casing.16.png');
    }
  }
}

#turning-circle-fill {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    point-file: url('symbols/turning_circle-tert-fill.16.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-tert-fill.22.png');
    }
  }
  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      point-file: url('symbols/turning_circle-uncl-fill.12.png');
      point-allow-overlap: true;
      point-ignore-placement: true;
      [zoom >= 16] {
        point-file: url('symbols/turning_circle-uncl-fill.16.png');
      }
      [zoom >= 17] {
        point-file: url('symbols/turning_circle-uncl-fill.22.png');
      }
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    point-file: url('symbols/turning_circle-livs-fill.12.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 16] {
      point-file: url('symbols/turning_circle-livs-fill.16.png');
    }
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-livs-fill.22.png');
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    point-file: url('symbols/turning_circle-uncl-fill.12.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-fill.14.png');
    }
  }
}



#highway-area-casing {
  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'] {
    [zoom >= 14] {
      line-color: #999;
      line-width: 1;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_service'],
  [feature = 'highway_footway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      line-color: grey;
      line-width: 1;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    line-color: #996600;
    line-width: 2;
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      line-color: grey;
      line-width: 2;
      line-cap: round;
      line-join: round;
    }
  }
}

#highway-area-fill {
  polygon-opacity: 0.5;
  [feature = 'highway_living_street'][zoom >= 14] {
    polygon-fill: #ccc;
  }

  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'],
  [feature = 'highway_service'] {
    [zoom >= 14] {
      polygon-fill: #fff;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_footway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      polygon-fill: #ededed;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    polygon-fill: #dfcc66;
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      polygon-fill: #bbbbbb;
      polygon-gamma: 0.65;
    }
  }

  [feature = 'aeroway_runway'][zoom >= 11] {
    polygon-fill: #bbc;
  }

  [feature = 'aeroway_taxiway'][zoom >= 13] {
    polygon-fill: #bbc;
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    polygon-fill: #bbc;
  }
}

#highway-junctions {
  [zoom >= 11] {
    ref/text-name: "[ref]";
    ref/text-size: 12;
    ref/text-fill: #6666ff;
    ref/text-min-distance: 2;
    ref/text-face-name: @oblique-fonts;
    ref/text-halo-radius: 1;
    ref/text-wrap-width: 12;
    [zoom >= 12] {
      name/text-name: "[name]";
      name/text-size: 11;
      name/text-fill: #6666ff;
      name/text-dy: -8;
      name/text-face-name: @oblique-fonts;
      name/text-halo-radius: 1;
      name/text-wrap-character: ";";
      name/text-wrap-width: 2;
      name/text-min-distance: 2;
    }
    [zoom >= 15] {
      ref/text-size: 15;
      name/text-size: 14;
      name/text-dy: -10;
    }
  }
}


#tunnels::casing {
  line-opacity: 0.75;
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: @motorway-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-color: @trunk-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-color: @primary-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-dasharray: 4,2;
      line-color: @secondary-casing;
    }
    [zoom >= 13] { line-width: 10; }
    [zoom >= 15] { line-width: 12; }
    [zoom >= 17] { line-width: 17; }
  }

  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 13] {
      line-width: 6;
      line-dasharray: 4,2;
      line-color: @tertiary-casing;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: @residential-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 14] { line-width: 4.5; }
    [zoom >= 15] { line-width: 8; }
    [zoom >= 16] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }
}

#tunnels::fill {
  line-opacity: 0.75;
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: @motorway-tunnel-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 5; }
    [zoom >= 15] { line-width: 8.5; }
    [zoom >= 17] { line-width: 11; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @trunk-tunnel-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @primary-tunnel-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: @secondary-tunnel-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: @tertiary-tunnel-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 13] {
      line-width: 2;
      line-color: @residential-tunnel-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }
}

#minor-roads-casing::links {
  line-opacity: 0.75;
  line-color: transparent;
  [highway = 'raceway'] {
    [zoom >= 12] {
      line-color: pink;
      line-width: 1.2;
      line-join: round;
    }
    [zoom >= 13] { line-width: 4; }
    [zoom >= 15] { line-width: 7; }
  }

  [highway = 'motorway_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 1.5;
      line-color: @motorway-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: 4.5; }
    [zoom >= 15] { line-width: 8; }
    [zoom >= 17] { line-width: 11; }
  }

  [highway = 'trunk_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: @trunk-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'primary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: @primary-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'secondary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @secondary-casing;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'tertiary_link'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 6;
      line-color: @tertiary-casing;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }
}

#minor-roads-casing {
  line-opacity: 0.75;
  line-color: transparent;
  [highway = 'motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: @motorway-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: @trunk-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'primary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: @primary-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @secondary-casing;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 8.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'tertiary'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 6;
      line-color: @tertiary-casing;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [tunnel != 'yes'] {
      [zoom >= 13] {
        line-width: 3;
        line-color: @residential-thin;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] { line-width: 4.5; }
      [zoom >= 15] {
        line-width: 8;
        line-color: @residential-casing;
      }
      [zoom >= 16] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }
  }

  /* This needs refactoring! Minor services shouldn't appear at z14
   * simply because of a tunnel tag. Also rationalise joins and caps
   */
  [highway = 'service'] {
    [service = 'INT-normal'][tunnel != 'yes'] {
      [zoom >= 14] {
        line-color: @service-casing;
        line-width: 2.5;
        line-cap: round;
      }
      [zoom >= 16] { line-width: 7; }
    }
    [service = 'INT-minor'][tunnel != 'yes'] {
      [zoom >= 16] {
        line-color: @service-casing;
        line-width: 4;
        line-cap: round;
        line-join: round;
      }
    }
    [tunnel = 'yes'][zoom >= 14] {
      line-color: @service-casing;
      line-width: 2.5;
      line-dasharray: 4,2;
      [zoom >= 16] { line-width: 7; }
    }
  }

  [highway = 'pedestrian'][zoom >= 13] {
    line-width: 2;
    line-color: @pedestrian-casing;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 3.6; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9; }
    [tunnel = 'yes'] {
      line-dasharray: 4,2;
    }
  }

  [highway = 'living_street'][zoom >= 12] {
    line-width: 2.5;
    line-color: @living-street-casing;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 4; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 16] { line-width: 9; }
    [zoom >= 17] { line-width: 14.5; }
  }
}

#minor-roads-fill::links {
  line-opacity: 0.75;
  line-color: transparent;
  [feature = 'highway_motorway_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 0.5;
      line-color: @motorway-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 17] { line-width: 9; }
  }

  [feature = 'highway_trunk_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @trunk-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [feature = 'highway_primary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @primary-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [feature = 'highway_secondary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: @secondary-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [feature = 'highway_tertiary_link'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 4.5;
      line-color: @tertiary-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 14] { line-width: 6; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }
}

#minor-roads-fill {
  line-opacity: 0.65;
  line-opacity: 0.75;
  /*
   * The construction rules for small roads are strange, since if construction is null its assumed that
   * it's a more major road. The line-width = 0 could be removed by playing with the query to set a construction
   * string for non-small roads.
   *
   * Also note that these rules are quite sensitive to re-ordering, since the instances end up swapping round
   * (and then the dashes appear below the fills). See
   * https://github.com/gravitystorm/openstreetmap-carto/issues/23
   * https://github.com/mapbox/carto/issues/235
   * https://github.com/mapbox/carto/issues/237
   */
  [feature = 'highway_proposed'],
  [feature = 'highway_construction'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #9cc;

      [construction = 'motorway'],
      [construction = 'motorway_link'] {
        line-color: @motorway-fill;
      }
      [construction = 'trunk'],
      [construction = 'trunk_link'] {
        line-color: @trunk-fill;
      }
      [construction = 'primary'],
      [construction = 'primary_link'] {
        line-color: @primary-fill;
      }
      [construction = 'secondary'],
      [construction = 'secondary_link'] {
        line-color: @secondary-fill;
      }
      [construction = 'tertiary'],
      [construction = 'tertiary_link'] {
        line-color: @tertiary-fill;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'residential'],
      [construction = 'unclassified'],
      [construction = 'living_street'] {
        line-color: @residential-construction;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'service'] {
        line-color: @service-construction;
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      b/line-width: 2;
      b/line-dasharray: 4,2;
      b/line-color: white;
      [zoom >= 13] {
        line-width: 4;
        b/line-width: 3.5;
        b/line-dasharray: 6,4;
      }
      [zoom >= 16] {
        line-width: 8;
        b/line-width: 7;
        b/line-dasharray: 8,6;
      }
      [construction = 'cycleway'] {
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
        line-color: white;
        line-width: 3;
        line-opacity: 0.4;
        b/line-width: 1.2;
        b/line-color: #69f;
        b/line-dasharray: 2,6;
      }
    }
  }

  [feature = 'highway_motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: @motorway-fill;
    }
    [zoom >= 13] {
      line-width: 5;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 15] { line-width: 8.5; }
    [zoom >= 17] { line-width: 11; }
  }

  [feature = 'highway_trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-cap: round;
      line-join: round;
      line-color: @trunk-fill;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [feature = 'highway_primary'][tunnel != 'yes'] {
    [zoom >= 11] { /* awooga prob should be 12? */
      line-width: 2.5;
      line-color: @primary-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [feature = 'highway_secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: @secondary-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [feature = 'highway_tertiary'],
  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'],
  [feature = 'highway_road'] {
    [zoom >= 1][zoom < 10] {
      line-width: 0.5;
      line-opacity: 0.1;
      line-color: @residential-thin;
    }
    [zoom >= 10][zoom < 13] {
      line-width: 1;
      line-color: @residential-thin;
    }
  }

  [feature = 'highway_road'][zoom >= 1]{
      line-opacity:0.05;
    }
    [zoom >= 13] {
    line-width: 2;
    line-color: @road-fill;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 2;
      line-color: @residential-fill;
      line-cap: round;
      line-join: round;
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 6.5; }
      [zoom >= 16] { line-width: 9.4; }
      [zoom >= 17] { line-width: 13; }
    }
  }

  [feature = 'highway_living_street'][zoom >= 12] {
    line-width: 1.5;
    line-color: @living-street-fill;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 4.7; }
    [zoom >= 16] { line-width: 7.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [feature = 'highway_tertiary'][tunnel != 'yes'][zoom >= 13] {
    line-width: 4.5;
    line-color: @tertiary-fill;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 6; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [feature = 'highway_service'][service = 'INT-normal'][zoom >= 13] {
    line-width: 1;
    line-color: @residential-thin;
    [zoom >= 14] {
      line-join: round;
      line-cap: round;
      line-width: 2;
      line-color: @residential-fill;
    }
    [zoom >= 16] { line-width: 6; }
  }

  [feature = 'highway_service'][service = 'INT-minor'][zoom >= 16] {
    line-width: 3;
    line-color: @residential-fill;
    line-join: round;
    line-cap: round;
  }

  [feature = 'highway_pedestrian'][zoom >= 13] {
    line-width: 1.5;
    line-color: #ededed;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 5.5; }
    [zoom >= 16] { line-width: 8; }
  }

  [feature = 'highway_platform'] {
    [zoom >= 16] {
      line-join: round;
      line-width: 6;
      line-color: grey;
      line-cap: round;
      b/line-width: 4;
      b/line-color: #bbbbbb;
      b/line-cap: round;
      b/line-join: round;
    }
  }

  [feature = 'highway_steps'][zoom >= 13][zoom < 15] {
    line-width: 6;
    line-color: #fff;
    line-opacity: 0.4;
    b/line-width: 2;
    b/line-color: salmon;
    b/line-dasharray: 1,3;
    b/line-cap: round;
    b/line-join: round;
  }

  [feature = 'highway_steps'][zoom >= 15] {
    line-width: 5.0;
    line-color: salmon;
    line-dasharray: 2,1;
  }

  [feature = 'highway_bridleway'],
  [feature = 'highway_path'][horse = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 3;
      line-color: #fff;
      line-cap: round;
      line-join: round;
      line-opacity: 0.4;
      b/line-color: green;
      b/line-width: 1.2;
      b/line-dasharray: 4,2;
    }
  }

  [feature = 'highway_footway'],
  [feature = 'highway_path'][foot = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 4;
      line-color: #fff;
      line-opacity: 0.4;
      line-cap: round;
      line-join: round;
      b/line-width: 1.5;
      b/line-color: salmon;
      b/line-dasharray: 1,3;
      b/line-cap: round;
      b/line-join: round;
    }
  }

  [feature = 'highway_cycleway'],
  [feature = 'highway_path'][bicycle = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 3;
      line-color: white;
      line-join: round;
      line-cap: round;
      line-opacity: 0.4;
      b/line-width: 1.2;
      b/line-dasharray: 1,3;
      b/line-color: blue;
      b/line-join: round;
      b/line-cap: round;
    }
  }

  /*
   * The above defininitions should override this when needed
   * given the specitivity precedence.
   */
  [feature = 'highway_path'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 1.0;
      line-color: white;
      line-opacity: 0.4;
      line-cap: round;
      line-join: round;
      b/line-width: 0.5;
      b/line-dasharray: 6,3;
      b/line-color: brown;
      b/line-join: round;
      b/line-cap: round;
    }
  }

  [feature = 'highway_byway'][zoom >= 13] {
    line-width: 4;
    line-color: white;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 1.5;
    b/line-dasharray: 3,4;
    b/line-color: #ffcc00;
    b/line-join: round;
    b/line-cap: round;
  }

  /* Todo re-unite this with the rest of the track definitions */
  [feature = 'highway_track'][zoom >= 13][zoom < 14] {
    line-color: white;
    line-width: 2.5;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 1.2;
    b/line-color: #996600;
    b/line-dasharray: 3,4;
    b/line-cap: round;
    b/line-join: round;
  }

  /* TODO remove */
  [feature = 'highway_unsurfaced'][zoom >= 13] {
    line-width: 3.5;
    line-color: #fff;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 2.5;
    b/line-color: #debd9c;
    b/line-dasharray: 2,4;
    b/line-cap: round;
    b/line-join: round;
    [zoom >= 14] {
      line-width: 5;
      b/line-width: 4;
      b/line-dasharray: 4,6;
    }
  }

    [feature = 'railway_rail'][tunnel = 'yes'][zoom >= 13],
    [feature = 'railway_spur-siding-yard'][tunnel = 'yes'][zoom >= 13] {
      a/line-width: 3;
      b/line-width: 3;
      c/line-width: 3;
      d/line-width: 3;
      e/line-width: 3;
      f/line-width: 3;
      g/line-width: 3;
      a/line-color: #ffffff;
      b/line-color: #fdfdfd;
      c/line-color: #ececec;
      d/line-color: #cacaca;
      e/line-color: #afafaf;
      f/line-color: #a1a1a1;
      g/line-color: #9b9b9b;
      a/line-dasharray: 1,9;
      b/line-dasharray: 0,1,1,8;
      c/line-dasharray: 0,2,1,7;
      d/line-dasharray: 0,3,1,6;
      e/line-dasharray: 0,4,1,5;
      f/line-dasharray: 0,5,1,4;
      g/line-dasharray: 0,6,1,3;
      a/line-join: round;
      b/line-join: round;
      c/line-join: round;
      d/line-join: round;
      e/line-join: round;
      f/line-join: round;
      g/line-join: round;
      [feature = 'railway_spur-siding-yard'] {
        a/line-width: 2;
        b/line-width: 2;
        c/line-width: 2;
        d/line-width: 2;
        e/line-width: 2;
        f/line-width: 2;
        g/line-width: 2;
      }
    }

    [feature = 'railway_rail'][tunnel != 'yes'][zoom >= 13] {
      a/line-width: 3;
      a/line-color: #999999;
      a/line-join: round;
      b/line-width: 1;
      b/line-color: white;
      b/line-dasharray: 8,12;
      b/line-join: round;
      [zoom >= 14] {
        b/line-dasharray: 0,11,8,1;
      }
    }

    [feature = 'railway_spur-siding-yard'][zoom >= 11] {
      a/line-width: 1;
      a/line-color: #aaa;
      a/line-join: round;
      [zoom >= 13][tunnel != 'yes'] {
        a/line-color: #999999;
        a/line-width: 2;
        b/line-width: 0.8;
        b/line-dasharray: 0,8,11,1;
        b/line-color: white;
        b/line-join: round;
      }
    }

    [feature = 'railway_narrow_gauge'],
    [feature = 'railway_funicular'] {
      [zoom >= 13] {
        a/line-width: 2;
        a/line-color: #666;
        [tunnel = 'yes'] {
          a/line-width: 5;
          a/line-dasharray: 5,3;
          b/line-color: #fff;
          b/line-width: 4;
          c/line-color: #aaa;
          c/line-width: 1.5;
        }
      }
    }

    [feature = 'railway_miniature'][zoom >= 15] {
      a/line-width: 1.2;
      a/line-color: #999;
      b/line-width: 3;
      b/line-color: #999;
      b/line-dasharray: 1,10;
    }

    [feature = 'railway_tram'][tunnel = 'yes'][zoom >= 13] {
      line-width: 1;
      line-dasharray: 5,3;
      line-color: #444;
      [zoom >= 15] { line-width: 2; }
    }

    [feature = 'railway_light_rail'][zoom >= 13] {
      line-width: 2;
      line-color: #666;
      [tunnel = 'yes'] {
        line-dasharray: 5,3;
      }
    }

    [feature = 'railway_subway'][zoom >= 12] {
      line-width: 2;
      line-color: #999;
      [tunnel = 'yes'] {
        line-dasharray: 5,3;
      }
    }

    [feature = 'railway_disused'],
    [feature = 'railway_abandoned'],
    [feature = 'railway_construction'] {
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [feature = 'railway_platform'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [feature = 'railway_turntable'][zoom >= 16] {
      line-width: 1.5;
      line-color: #999;
    }

  [feature = 'aeroway_runway'][zoom >= 11][zoom < 14] {
    line-width: 2;
    line-color: #bbc;
    [zoom >= 12] { line-width: 4; }
    [zoom >= 13] { line-width: 7; }
  }

  [feature = 'aeroway_runway'][bridge = 'no'][zoom >= 14] {
    line-width: 18;
    line-color: #bbc;
  }

  [feature = 'aeroway_taxiway'][zoom >= 11][zoom < 14] {
    line-width: 1;
    line-color: #bbc;
  }

  [feature = 'aeroway_taxiway'][bridge = 'no'][zoom >= 14] {
    line-width: 4;
    line-color: #bbc;
    [zoom >= 15] {
      line-width: 6;
    }
  }
}

/* This is a good target for refactoring */
.access {
  [access = 'permissive'] {
    [highway = 'unclassified'],
    [highway = 'residential'],
    [highway = 'footway'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: #cf9;
        line-dasharray: 6,8;
        line-cap: round;
        line-join: round;
        line-opacity: 0.5;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #cf9;
      line-dasharray: 6,8;
      line-cap: round;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'destination'] {
    [highway = 'unclassified'],
    [highway = 'residential'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: #c2e0ff;
        line-dasharray: 6,8;
        line-cap: round;
        line-join: round;
        line-opacity: 0.5;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #c2e0ff;
      line-dasharray: 6,8;
      line-cap: round;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'private'],
  [access = 'no'] {
    [highway != 'service'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: #efa9a9;
        line-dasharray: 6,8;
        line-opacity: 0.5;
        line-join: round;
        line-cap: round;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #efa9a9;
      line-dasharray: 6,8;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      [zoom >= 16] { line-width: 6; }
    }
  }
}

#footbikecycle-tunnels {
  [highway = 'bridleway'],
  [highway = 'path'][horse = 'designated'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: grey;
      line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: #fff;
      b/line-cap: round;
      b/line-join: round;
      c/line-width: 2;
      c/line-color: green;
      c/line-opacity: 0.5;
      c/line-dasharray: 4,2;
      c/line-join: round;
      c/line-cap: round;
    }
  }

  [highway = 'footway'],
  [highway = 'path'][foot = 'designated'] {
    [zoom >= 13] {
      line-width: 5.5;
      line-color: grey;
      line-dasharray: 4,2;
      b/line-width: 3.5;
      b/line-color: #fff;
      b/line-join: round;
      b/line-cap: round;
      c/line-width: 2.5;
      c/line-color: salmon;
      c/line-dasharray: 1,3;
      c/line-opacity: 0.5;
      c/line-join: round;
      c/line-cap: round;
    }
  }

  [highway = 'cycleway'],
  [highway = 'path'][bicycle = 'designated'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: grey;
      line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: white;
      b/line-join: round;
      b/line-cap: round;
      c/line-width: 2;
      c/line-color: blue;
      c/line-opacity: 0.5;
      c/line-dasharray: 1,3;
      c/line-join: round;
      c/line-cap: round;
    }
  }

  /*
  * The above defininitions should override this when needed
  * given the specitivity precedence.
  */
  [highway = 'path'][zoom >= 13] {
    line-width: 5.5;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 1;
    b/line-color: white;
    b/line-opacity: 0.4;
    b/line-join: round;
    b/line-cap: round;
    c/line-width: 0.5;
    c/line-color: brown;
    c/line-dasharray: 6,3;
    c/line-cap: round;
    c/line-join: round;
  }
}

#tracks-notunnel-nobridge {
  [zoom >= 14] {
    line-width: 3;
    line-color: white;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 1.5;
    b/line-color: #996600;
    b/line-dasharray: 3,4;
    b/line-cap: round;
    b/line-join: round;
    [tracktype = 'grade1'] {
      line-width: 3.5;
      b/line-width: 2;
      b/line-color: #b37700;
      b/line-opacity: 0.7;
      b/line-dasharray: 100,0; /* i.e. none, see https://github.com/mapbox/carto/issues/214 */
    }
    [tracktype = 'grade2'] {
      b/line-color: #a87000;
      b/line-dasharray: 9,4;
      b/line-opacity: 0.8;
    }
    [tracktype = 'grade3'] {
      b/line-opacity: 0.8;
    }
    [tracktype = 'grade4'] {
      b/line-width: 2;
      b/line-dasharray: 4,7,1,5;
      b/line-opacity: 0.8;
    }
    [tracktype = 'grade5'] {
      b/line-width: 2;
      b/line-dasharray: 1,5;
      b/line-opacity: 0.8;
    }
  }
}

#tracks-tunnels {
  line-opacity: 0.75;
  [zoom >= 14] {
    line-width: 4.5;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 3;
    b/line-color: white;
    b/line-cap: round;
    b/line-join: round;
    c/line-width: 1.5;
    c/line-color: #996600;
    c/line-dasharray: 3,4;
    c/line-opacity: 0.5;
    c/line-join: round;
    c/line-cap: round;
    [tracktype = 'grade1'] {
      line-width: 4;
      b/line-width: 3.5;
      c/line-width: 2;
      c/line-color: #b37700;
      c/line-dasharray: 100,0; /* i.e. none, see https://github.com/mapbox/carto/issues/214 */
    }
    [tracktype = 'grade2'] {
      c/line-color: #a87000;
    }
    [tracktype = 'grade3'] {
      b/line-width: 3.5;
      c/line-width: 2;
      c/line-dasharray: 100,0; /* yes, weird but true */
    }
    [tracktype = 'grade4'] {
      c/line-width: 2;
      c/line-dasharray: 4,7,1,5;
    }
    [tracktype = 'grade5'] {
      c/line-width: 2;
      c/line-dasharray: 1,5;
    }
  }
}

.bridges {
  line-opacity: 0.5;
  ::bridges_casing {
    [feature = 'highway_motorway'],
    [feature = 'highway_motorway_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: @motorway-casing;
      }
      [zoom >= 13] {
        line-width: 6.5;
        line-color: black;
      }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 17] { line-width: 12; }
    }

    [feature = 'highway_trunk'],
    [feature = 'highway_trunk_link'] {
      [zoom >= 12] {
        line-width: 4;
        line-color: @trunk-casing;
      }
      [zoom >= 13] {
        line-width: 8;
        line-color: black;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_primary'],
    [feature = 'highway_primary_link'] {
      [zoom >= 12] {
        line-width: 4;
        line-color: @primary-casing;
      }
      [zoom >= 13] {
        line-width: 8;
        line-color: black;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_secondary'],
    [feature = 'highway_secondary_link'] {
      [zoom >= 13] {
        line-width: 10;
        line-color: black;
      }
      [zoom >= 15] { line-width: 12; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_tertiary'],
    [feature = 'highway_tertiary_link'] {
      [zoom >= 14] {
        line-width: 7.5;
        line-color: black;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-width: 4.5;
        line-color: black;
      }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 16] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_service'] {
      [zoom >= 14] {
        line-width: 3;
        line-color: black;
      }
      [zoom >= 16] { line-width: 8; }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-width: 2.2;
        line-color: black;
      }
      [zoom >= 14] { line-width: 3.8; }
      [zoom >= 15] { line-width: 7; }
      [zoom >= 16] { line-width: 9.5; }
    }

    [feature = 'highway_unsurfaced'][zoom >= 13] {
      line-width: 5;
      line-color: black;
      [zoom >= 14] { line-width: 6.5; }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 5.5;
        line-color: black;
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 6;
        line-color: black;
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 5.5;
        line-color: black;
      }
    }

    [feature = 'highway_path'][zoom >= 14] {
      line-width: 4;
      line-color: black;
    }

    [feature = 'highway_byway'][zoom >= 14] {
      line-width: 5.5;
      line-color: black;
    }

    [feature = 'highway_track'][zoom >= 14] {
      line-width: 4.5;
      line-color: black;
      [tracktype = 'grade1'] {
        line-width: 5;
      }
    }

      [feature = 'railway_subway'][zoom >= 14] {
        line-width: 5.5;
        line-color: black;
      }

      [feature = 'railway_light_rail'],
      [feature = 'railway_narrow_gauge'] {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: #555;
        }
      }

      [feature = 'railway_rail'][zoom >= 13] {
        line-width: 6.5;
        line-color: black;
        line-join: round;
      }

      [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
        line-width: 5.7;
        line-color: black;
        line-join: round;
      }

      [feature = 'railway_disused'],
      [feature = 'railway_abandoned'],
      [feature = 'railway_construction'] {
        [zoom >= 13] {
          line-width: 6;
          line-color: black;
        }
      }

    [feature = 'aeroway_runway'][zoom >= 14] {
      line-width: 19;
      line-color: black;
    }

    [feature = 'aeroway_taxiway'][zoom >= 14] {
      line-width: 5;
      line-color: black;
      [zoom >= 15] { line-width: 7; }
    }
  }

  ::bridges-casing2 {
    [feature = 'highway_unsurfaced'][zoom >= 13] {
      line-width: 4;
      line-color: white;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 5; }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 4.5;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_path'] {
      [zoom >= 14] {
        line-width: 2.5;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_byway'][zoom >= 14] {
      line-width: 4;
      line-color: white;
      line-join: round;
      line-cap: round;
    }

    [feature = 'highway_track'][zoom >= 14] {
      line-width: 3;
      line-color: white;
      line-join: round;
      line-cap: round;
      [tracktype = 'grade1'] { line-width: 3.5; }
    }

      [feature = 'railway_rail'][zoom >= 13] {
        line-width: 5;
        line-color: white;
        line-join: round;
      }

      [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }

      [feature = 'railway_disused'],
      [feature = 'railway_abandoned'],
      [feature = 'railway_construction'] {
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
          line-cap: round;
        }
      }

      [feature = 'railway_subway'][zoom >= 14] {
        line-width: 4;
        line-color: white;
      }

      [feature = 'railway_light_rail'],
      [feature = 'railway_narrow_gauge'] {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
        }
      }
  }

  ::bridges_fill {
    [feature = 'highway_motorway'],
    [feature = 'highway_motorway_link'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: @motorway-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 13] { line-width: 5.5; }
      [zoom >= 15] { line-width: 7.5; }
      [zoom >= 17] { line-width: 10; }
    }

    [feature = 'highway_trunk'],
    [feature = 'highway_trunk_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: @trunk-fill;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 13] { line-width: 7; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [feature = 'highway_primary'],
    [feature = 'highway_primary_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: @primary-fill;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 13] { line-width: 7; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [feature = 'highway_secondary'],
    [feature = 'highway_secondary_link'] {
      [zoom >= 13] {
        line-width: 9;
        line-color: @secondary-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 10.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [feature = 'highway_tertiary'],
    [feature = 'highway_tertiary_link'] {
      [zoom >= 14] {
        line-width: 6;
        line-color: @tertiary-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-width: 3.5;
        line-color: @road-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom >= 14] {
        line-width: 3.5;
        line-color: @residential-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 7.5; }
      [zoom >= 16] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [feature = 'highway_service'] {
      [zoom >= 14] {
        line-width: 2;
        line-color: @service-fill;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 16] { line-width: 6; }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-width: 1.5;
        line-color: #ededed;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 5.5; }
      [zoom >= 16] { line-width: 8; }
    }

    [feature = 'highway_unsurfaced'][zoom >= 13] {
      line-width: 3;
      line-dasharray: 2,4;
      line-color: #debd9c;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 4; }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 1.5;
        line-color: green;
        line-dasharray: 4,2;
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 2;
        line-color: salmon;
        line-dasharray: 1,3;
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 1.5;
        line-color: blue;
        line-dasharray: 1,3;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_path'][zoom >= 14] {
      line-width: 0.5;
      line-color: brown;
      line-dasharray: 6,3;
      line-join: round;
      line-cap: round;
    }

    [feature = 'highway_byway'][zoom >= 14] {
      line-width: 1.5;
      line-color: #ffcc00;
      line-dasharray: 3,4;
      line-cap: round;
      line-join: round;
    }

    [feature = 'highway_track'][zoom >= 14] {
      line-width: 1.5;
      line-color: #996600;
      line-dasharray: 3,4;
      line-join: round;
      line-cap: round;
      [tracktype = 'grade1'] {
        line-width: 2;
        line-color: #b37700;
        line-dasharray: 100,0; /* i.e. none */
        line-opacity: 0.7;
      }
      [tracktype = 'grade2'] {
        line-color: #a87000;
        line-opacity: 0.8;
      }
      [tracktype = 'grade3'] {
        line-width: 2;
        line-opacity: 0.7;
        line-dasharray: 100,0; /* strange but true */
      }
      [tracktype = 'grade4'] {
        line-width: 2;
        line-dasharray: 4,7,1,5;
        line-opacity: 0.8;
      }
      [tracktype = 'grade5'] {
        line-width: 2;
        line-dasharray: 1,5;
        line-opacity: 0.8;
      }
    }

      [feature = 'railway_rail'][zoom >= 13] {
        line-width: 3;
        line-color: #999999;
        line-join: round;
        b/line-width: 1;
        b/line-color: white;
        b/line-dasharray: 8,12;
        b/line-join: round;
        [zoom >= 14] {
          b/line-dasharray: 0,11,8,1;
        }
      }

      [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
        line-width: 2;
        line-color: #999999;
        line-join: round;
        b/line-width: 0.8;
        b/line-color: white;
        b/line-dasharray: 0,8,11,1;
        b/line-join: round;
      }

      [feature = 'railway_disused'],
      [feature = 'railway_abandoned'],
      [feature = 'railway_construction'] {
        [zoom >= 13] {
          line-width: 2;
          line-color: grey;
          line-dasharray: 2,4;
          line-join: round;
        }
      }

      [feature = 'railway_subway'][zoom >= 14] {
        line-width: 2;
        line-color: #999;
      }

      [feature = 'railway_light_rail'],
      [feature = 'railway_narrow_gauge'] {
        [zoom >= 14] {
          line-width: 2;
          line-color: #666;
        }
      }

    [feature = 'aeroway_runway'][zoom >= 14] {
      line-width: 18;
      line-color: #bbc;
    }

    [feature = 'aeroway_taxiway'][zoom >= 14] {
      line-width: 4;
      line-color: #bbc;
      [zoom >= 15] { line-width: 6; }
    }
  }
}

#roads {
  line-color: transparent;
  [feature = 'highway_motorway'],
  [feature = 'highway_motorway_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.5;
      line-color: @motorway-fill;
      [zoom >= 7] { line-width: 1; }
      [zoom >= 9] { line-width: 1.4; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_trunk'],
  [feature = 'highway_trunk_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.4;
      line-color: @trunk-fill;
      [zoom >= 7] {
        line-width: 1;
        line-color: #97d397;
      }
      [zoom >= 9] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_primary'],
  [feature = 'highway_primary_link'] {
    [zoom >= 7][zoom < 12] {
      line-width: 0.5;
      line-color: @primary-fill;
      [zoom >= 9] { line-width: 1.2; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_secondary'],
  [feature = 'highway_secondary_link'] {
    [zoom >= 9][zoom < 12] {
      line-width: 1;
      line-color: @secondary-fill;
      [zoom >= 11] { line-width: 2; }
    }
  }

    [feature = 'railway_rail'][zoom >= 6][zoom < 13] {
      line-width: 0.6;
      line-color: #aaa;
      [zoom >= 9] { line-width: 1; }
      [zoom >= 10] { line-width: 2; }
      [tunnel = 'yes'] {
        line-dasharray: 5,2;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_light_rail'],
    [feature = 'railway_narrow_gauge'],
    [feature = 'railway_funicular'] {
      [zoom >= 8][zoom < 13] {
        line-width: 1;
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa }
      }
    }

    [feature = 'railway_preserved'][zoom >= 12] {
      line-width: 1.5;
      line-color: #aaa;
      line-join: round;
      [zoom >= 13] {
        line-width: 3;
        line-color: #999999;
        b/line-width: 1;
        b/line-color: white;
        b/line-dasharray: 0,1,8,1;
        b/line-join: round;
      }
    }

    [feature = 'railway_INT-preserved-ssy'][zoom >= 12] {
      line-width: 1;
      line-color: #aaa;
      line-join: round;
      [zoom >= 13] {
        line-width: 2;
        line-color: #999999;
        b/line-width: 0.8;
        b/line-color: white;
        b/line-dasharray: 0,1,8,1;
        b/line-join: round;
      }
    }

    [feature = 'railway_monorail'][zoom >= 14] {
      line-width: 4;
      line-color: #fff;
      line-opacity: 0.4;
      line-cap: round;
      line-join: round;
      b/line-width: 3;
      b/line-color: #777;
      b/line-dasharray: 2,3;
      b/line-cap: round;
      b/line-join: round;
    }
}

#trams {
  [railway = 'tram'][zoom >= 13] {
    line-color: #444;
    line-width: 1;
    [zoom >= 15] {
      line-width: 2;
      [bridge = 'yes'] {
        line-width: 5;
        line-color: black;
        b/line-width: 4;
        b/line-color: white;
        c/line-width: 2;
        c/line-color: #444;
      }
    }
  }
}

#guideways {
  [zoom >= 13] {
    line-width: 3;
    line-color: #6666ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
  }
  [zoom >= 14] {
    b/line-dasharray: 0,11,8,1;
  }
}

#roads-text-ref-low-zoom {
  line-color: transparent;
  [highway = 'motorway'][length < 9] {
    [zoom >= 10][zoom < 13] {
      shield-name: "[ref]";
      shield-size: 10;
      shield-fill: #fff;
      shield-placement: line;
      shield-file: url("symbols/mot_shield[length].png");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      [length = 7] { shield-file: url('symbols/mot_shield6.png'); }
      [length = 8] { shield-file: url('symbols/mot_shield7.png'); }
    }
  }

  [highway = 'trunk'][zoom >= 11][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/tru_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'primary'][zoom >= 11][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/pri_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'secondary'][zoom >= 12][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/sec_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }
}

#roads-text-ref {
  line-color: transparent;
  [highway = 'motorway'][length < 9] {
    [zoom >= 13] {
      shield-name: "[ref]";
      shield-size: 10;
      shield-fill: #fff;
      shield-placement: line;
      shield-file: url("symbols/mot_shield[length].png");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      [length = 7] { shield-file: url('symbols/mot_shield6.png'); }
      [length = 8] { shield-file: url('symbols/mot_shield7.png'); }
    }
  }

  [highway = 'trunk'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/tru_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'primary'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/pri_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'secondary'][bridge = 'no'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/sec_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'tertiary'][bridge = 'no'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/ter_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    line-color: transparent;
    [zoom >= 15][bridge = 'no'] {
      text-name: "[ref]";
      text-size: 13;
      text-fill: #000;
      text-face-name: @bold-fonts;
      text-min-distance: 18;
      text-halo-radius: 1;
      text-spacing: 750;
      text-clip: false;
    }
  }

  [highway = 'runway'],
  [highway = 'taxiway'] {
    [zoom >= 15][bridge = 'no'] {
      text-name: "[ref]";
      text-size: 13;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }
}

#roads-text-name {
  line-color: transparent;
  [highway = 'trunk'],
  [highway = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 11;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 12;
    }
    [zoom >= 15] {
      text-size: 13;
    }
  }
  [highway = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 11;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 12;
    }
    [zoom >= 15] {
      text-size: 13;
    }
  }
  [highway = 'tertiary'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #000;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 17] {
      text-size: 14;
    }
  }
  [highway = 'proposed'],
  [highway = 'construction'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #000;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 16] {
      text-size: 14;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 11;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 12;
    }
    [zoom >= 17] {
      text-size: 14;
      text-spacing: 400;
    }
  }
  /* Other things, not just roads */
  [zoom >= 15] {
    text-name: "[name]";
    text-size: 12;
    text-fill: #000;
    text-placement: line;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
  }
  [zoom >= 17] {
      text-size: 14;
  }
}

.directions {
  [zoom >= 16] {
    [oneway = 'yes'] {
      a/line-width: 1;
      a/line-dasharray: 0,12,10,152;
      a/line-color: #6c70d5;
      a/line-join: bevel;
      a/line-clip: false;
      b/line-width: 2;
      b/line-dasharray: 0,12,9,153;
      b/line-color: #6c70d5;
      b/line-join: bevel;
      b/line-clip: false;
      c/line-width: 3;
      c/line-dasharray: 0,18,2,154;
      c/line-color: #6c70d5;
      c/line-join: bevel;
      c/line-clip: false;
      d/line-width: 4;
      d/line-dasharray: 0,18,1,155;
      d/line-color: #6c70d5;
      d/line-join: bevel;
      d/line-clip: false;
    }
    [oneway = '-1'] {
      a/line-width: 1;
      a/line-dasharray: 0,12,10,152;
      a/line-color: #6c70d5;
      a/line-join: bevel;
      a/line-clip: false;
      b/line-width: 2;
      b/line-dasharray: 0,13,9,152;
      b/line-color: #6c70d5;
      b/line-join: bevel;
      b/line-clip: false;
      c/line-width: 3;
      c/line-dasharray: 0,14,2,158;
      c/line-color: #6c70d5;
      c/line-join: bevel;
      c/line-clip: false;
      d/line-width: 4;
      d/line-dasharray: 0,15,1,158;
      d/line-color: #6c70d5;
      d/line-join: bevel;
      d/line-clip: false;
    }
  }
}
