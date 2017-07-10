import './districts-map/districts-map.tag'
import './districts-map/districts-map-legend.tag'
import './map-infobox/map-infobox.tag'
import './map-searchbox/map-searchbox-container.tag'

<cor-mj-nrwbb-map class={ getClass('app-container') }>
  <map-searchbox-container ref='searchbox-container' />
  <map-infobox ref='infobox' />
  <districts-map-legend ref='districts-map-legend' />
  <section class={ getClass('districts-map-container') }>
    <districts-map ref='districts-map' gender='m' />
    <districts-map ref='districts-map' gender='f' />
  </section>
</cor-mj-nrwbb-map>
