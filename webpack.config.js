var webpack = require('webpack');

module.exports = {
	entry: './src/yuzuyu.js',
	output: {
		path: __dirname + '/app/dist/',
		filename: 'yuzuyu.js'
	},
	module: {
		preLoaders: [
			{
				test: /\.tag$/,
				exclude: /node_modules/,
				loader: 'riotjs',
				query: {
					template: 'pug',
					type: 'babel'
				}
			}
		],
		loaders: [
			{
				test: /\.js$|\.tag$/,
				exclude: /node_modules/,
				loader: 'babel'
			},
			{ test: /\.css$/, loader: "style!css" },
			{
				test: /\.scss$/,
				loaders: ["style", "css", "sass"]
			}
		]
	},
	plugins: [
		new webpack.optimize.UglifyJsPlugin({
			compress: {
					warnings: false
			}
		}),
		new webpack.optimize.DedupePlugin(),
		new webpack.ProvidePlugin({
			riot: 'riot'
		})
	]
};