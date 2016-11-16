<yuzuyu>
	<ul class="yuzu-list">
		<li class="yuzu yuzu-posi-{positionNo} yuzu-anime-{animeNo}" each="{fall_yuzu}"></li>
	</ul>
	<div class="yuge bottom-yuge"></div>
	<ul class="hokkori-list">
		<li class="yuge hokkori-yuge hokkori-posi-{positionNo} hokkori-anime-{animeNo}" each="{hokkori_yuge}"></li>
	</ul>
	<script>
		this.fall_yuzu_count = opts.fall_yuzu_count || 4
		this.hokkori_yuge_count = opts.hokkori_yuge_count || 10

		let makeRandomList = (count) => {
			let list = []
			for(let i = 0; i < count; i++) {
				list.push({
					positionNo: (0|Math.random()*40) + 1,
					animeNo: (0|Math.random()*40) + 1
				})
			}
			return list
		}

		this.fall_yuzu = makeRandomList(this.fall_yuzu_count)
		this.hokkori_yuge = makeRandomList(this.hokkori_yuge_count)
	</script>
</yuzuyu>
