#buildings-lz {
  polygon-opacity: 0.3;
  [zoom >= 10] {
    polygon-clip: false;
    [railway = 'station']::railway,
    [building = 'station'] {
      polygon-fill: #d4aaaa;
    }

    [building = 'supermarket'] {
      polygon-fill: pink;
    }

    [amenity = 'place_of_worship']::amenity {
      polygon-fill: #777;
      [zoom >= 15] {
        polygon-fill: #aaa;
        line-width: 0.3;
        line-color: #111;
      }
    }
  }
}

#buildings {
  polygon-opacity: 0.2;
  [building = 'INT-light'][zoom >= 12] {
    polygon-fill: #bca9a9;
    polygon-clip: false;
  }
  [building != 'INT-light'][building != ''][zoom >= 12] {
    polygon-fill: #bca9a9;
    polygon-clip: false;
    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
  [aeroway = 'terminal'][zoom >= 12]::aeroway {
    polygon-fill: #cc99ff;
    polygon-clip: false;
    [zoom >= 14] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
}
