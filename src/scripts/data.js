import * as topojson from 'topojson'
import * as d3 from './lib/d3.js'

const geoSrc = require('json!../data/nrw-bb.topo.json')
const geoData = topojson.feature(geoSrc, geoSrc.objects['nrw-bb'])

const states = {
  '05': ['Nordrhein-Westfalen', 'NRW'],
  '12': ['Brandenburg', 'BB']
}
const data = d3.csvParse(require('raw!../data/nrw_bb.csv')).map(d => {
  const [state, stateShort] = states[d.state]
  d.state = state
  d.stateShort = stateShort
  return d
})
const search = str => data.filter(d => d.name.toLowerCase().indexOf(str) > -1)

geoData.features.map(f => {
  f.id = f.properties.AGS
  const _data = data.find(d => d.ags === f.id)
  const {f_sum, t_sum} = _data
  _data.fRatio = Math.round(f_sum / t_sum * 1000) / 10
  f.properties = _data
})

module.exports = {
  geoData,
  data,
  search
}



