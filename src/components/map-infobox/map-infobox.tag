<map-infobox if={ data } class="{ getClass() } { -visible: visible }">

  <button class={ getClass('close-btn') } aria-label='Close' onclick={ close }></button>

  <header class={ getClass('header') }>
    <section class={ getClass('header__section') }>
      <span class={ getClass('state') }>{ data.state }</span>
      <h3 class={ getClass('title') }>{ data.name }</h3>
    </section>
    <section class={ getClass('header__section') }>
      <span class={ getClass('population') }><strong>{ data.t_sum }</strong>&nbsp;Minijobber</span>
      <span class={ getClass('f-ratio') }>davon <strong>{ data.fRatio }&nbsp;%</strong>&nbsp;Frauen</span>
    </section>
    <span class="-clear-"></span>
  </header>

  <section class={ getClass('section') }>
    <h4 class={ getClass('section__title') }>Durchschnittliche Dauer</h4>
    <dl>
      <dt>{ data.f_mean }</dt>
      <dt class="-small">Tage</dt>
      <dd class="badge badge--f">Frauen</dd>
    </dl>
    <dl>
      <dt>{ data.m_mean }</dt>
      <dt class="-small">Tage</dt>
      <dd class="badge badge--m">Männer</dd>
    </dl>
    <dl>
      <dt>{ data.t_mean }</dt>
      <dt class="-small">Tage</dt>
      <dd class="badge badge--t">Gesamt</dd>
    </dl>
    <span class="-clear-"></span>
  </section>
  <section class={ getClass('section') }>
    <p class={ getClass('annotation') }><strong>{ data.f_o5_rel }&nbsp;%</strong>
      der Frauen sind <strong>länger als fünf Jahre</strong> in einem Minijob.</p>
  </section>

  <span class="-clear-"></span>

  this.visible = false
  this.data = {}

  riot.control.on(riot.EVT.updateInfobox, data => {
    this.update({
      data,
      // barData: this.getBarData(data),
      visible: true
    })
  })

  riot.control.on(riot.EVT.hideInfobox, () => {
    this.update({visible: false})
  })

  this.close = () => this.update({visible: false})

  // this.getBarData = data => {
  //   const cols = ['f_main_rel', 'm_main_rel']
  //   const labels = ['Frauen', 'Männer']
  //   const modifiers = ['f', 'm']
  //   return cols.map((c, i) => {
  //     return {
  //       value: data[c],
  //       label: labels[i],
  //       modifier: modifiers[i]
  //     }
  //   })
  // }

</map-infobox>
