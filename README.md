# MWE Self Contained HTML File

This example shows how to produce a self contained html file with [webpack](https://webpack.js.org/) and [jekyll](https://jekyllrb.com/). In this case the [bootstrap](https://getbootstrap.com/) framework is used as an example.

To run this example you need node js and ruby with bundler.

```bash
$ make install
$ make build
```

Setting the `mode` in `webpack.config.js` to `development` results in a not minified output of JavaScript and CSS, while setting it to `production` will minify the JavaScript and CSS.

It is also possible to include everything just in JavaScript without producing a CSS section.
This can be achieved by changing the `rules` section to :

```javascript
rules: [
  {
    test: /\.s[ac]ss$/i,
    use: [
      // Creates `style` nodes from JS strings
      "style-loader",
      // Translates CSS into CommonJS
      "css-loader",
      // Compiles Sass to CSS
      "sass-loader",
    ],
  },
],
```

However, I suggest to separate JavaScript and CSS, so that browsers with disabled JavaScript still see your styles. Anyhow, a lot can be done with CSS alone, there is not always a need for JavaScript.
