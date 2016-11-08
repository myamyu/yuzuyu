var webpack = require('webpack');

module.exports = {
	cache: true,
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
					type: 'babel'
				}
			}
		],
		loaders: [
			{
				test: /\.js$|\.tag$/,
				exclude: /node_modules/,
				loader: 'babel',
				query: {
					presets: ['es2015-riot']
				}
			},
			{ 
				test: /\.css$/, 
				loaders: ['style', 'css', 'autoprefixer'] 
			},
			{
				test: /\.scss$/,
				loaders: ['style', 'css', 'autoprefixer', 'sass']
			}
		]
	},
	plugins: [
		new webpack.optimize.AggressiveMergingPlugin(),
		new webpack.optimize.DedupePlugin(),
		new webpack.optimize.UglifyJsPlugin({
			compress: {
					warnings: false
			}
		}),
		new webpack.ProvidePlugin({
			riot: 'riot'
		})
	]
};