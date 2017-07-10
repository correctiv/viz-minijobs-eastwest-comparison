import './entypo/entypo-svg.tag'

<piktogram-bar class={ getClass() }>
  <entypo-svg
    each={ piktos }
    symbol={ parent.opts.symbol }
    class={ parent._cssClass }
    style='width:{ parent.opts.width }%;'
  />

  this.piktos = Array(+this.opts.count).map(() => 0)
  this._css = this.getClass('pikto')
  this._cssClass = `${this._css} ${this._css}--${ this.opts.css }`
</piktogram-bar>
