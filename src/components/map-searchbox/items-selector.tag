import {data} from '../../scripts/data.js'

<items-selector class={ getClass() }>

  <select onchange={ jumpTo }>
    <option each={ item, i in items } value={ i }>{ item.stateShort } - { item.name }</option>
  </select>

  this.items = data.sort((a, b) => a.stateShort + a.name > b.stateShort + b.name ? 1 : -1)

  this.jumpTo = e => {
    const data = this.items[e.target.value]
    this.parent.jumpTo(data)
  }

</items-selector>
