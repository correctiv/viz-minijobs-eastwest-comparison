import {introData} from '../scripts/data.js'
import './div-bars/piktogram/piktogram-bar.tag'

<cor-mj-gender-intro class={ getClass('intro-viz') }>

  <section class={ getClass('intro-viz__count') }>
    <h3>Mehr Frauen als Männer machen Minijobs</h3>
    <piktogram-bar
      ref='piktogram-bar'
      symbol='man'
      css='female'
      width=9
      count=11 />
    <piktogram-bar
      ref='piktogram-bar'
      symbol='man'
      css='male'
      width=9
      count=7 />
  </section>

  <section class={ getClass('intro-viz__duration') }>
    <h3>Frauen machen länger einen Minijob als Männer</h3>
    <piktogram-bar
      ref='piktogram-bar'
      symbol='calendar'
      css='female'
      width=6
      count=32 />
    <piktogram-bar
      ref='piktogram-bar'
      symbol='calendar'
      css='male'
      width=6
      count=27 />
  </section>

</cor-mj-gender-intro>
