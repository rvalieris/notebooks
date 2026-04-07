function render({ model, el }) {
  // Build your UI and append it to `el`
  window.goatcounter = {
      endpoint: 'https://rvalieris.goatcounter.com/count',
  }
  var script = document.createElement("script");
  script.setAttribute('data-goatcounter', 'https://rvalieris.goatcounter.com/count');
  script.setAttribute('async','async');
  script.src = "//gc.zgo.at/count.js";
  el.appendChild(script);
}
export default { render };
