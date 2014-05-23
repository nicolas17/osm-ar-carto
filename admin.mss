#admin-01234 {
  line-opacity: 0.3;
  line-color: gold;
  [admin_level = '2'],
  [admin_level = '3'] {
    [zoom >= 4] {
      line-color: transparent;
      line-width: 0.4;
      line-opacity: 0.5;
    }
    [zoom >= 7] {
      line-color: transparent;
      line-width: 2;
    }
    [zoom >= 10] {
      line-opacity: 0.4;
      [admin_level = '2'] {
        line-width: 6;
      }
      [admin_level = '3'] {
        line-width: 5;
        line-dasharray: 4,2;
      }
    }
  }
  [admin_level = '4'] {
    line-color: gold;
    [zoom >= 4] {
      line-color: transparent;
      line-width: 0.6;
      line-dasharray: 4,3;
      line-opacity: 0.3;
    }
    [zoom >= 7] {
      line-color: transparent;
      line-width: 1;
    }
    [zoom >= 11] {
      line-width: 3;
    }
  }
}

#admin-5678 {
  line-opacity: 0.3;
  line-color: gold;
  [admin_level = '5'][zoom >= 11] {
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
    line-opacity: 0.2;
  }
  [admin_level = '6'][zoom >= 11] {
    line-color: gold;
    line-width: 2;
    line-dasharray: 6,3,2,3;
    line-opacity: 0.2;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      line-color: gold;
      line-width: 1.5;
      line-dasharray: 5,2;
      line-opacity: 0.3;
    }
  }
}

#admin-other {
  line-opacity: 0.3;
  line-color: gold;
  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      line-width: 2;
      line-dasharray: 2,3;
      line-opacity: 0.5;
    }
  }
}

/*
 * err, what does this do?
<Style name="admin-other">
   <Rule>
      <Filter>not [admin_level] != ''</Filter>
      &maxscale_zoom9;
      &minscale_zoom11;
      <LineSymbolizer stroke="purple" stroke-width="1" stroke-opacity="0.2"/>
    </Rule>
</Style>
*/

#national-park-boundaries {
  polygon-opacity: 0.05;
  [zoom >= 7] {
    polygon-opacity: 0.25;
    [zoom < 13] {
      polygon-fill: green;
    }
    line-color: green;
    line-width: 1.5;
    line-dasharray: 4,2;
    line-opacity: 0.15;
    [zoom >= 10] {
      line-width: 3;
      line-dasharray: 6,2;
    }
  }
  [way_area > 200000000][zoom >= 8][zoom < 12],
  [zoom >= 11][zoom < 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9c9;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    [zoom >= 11] { text-size: 11; }
  }
}
