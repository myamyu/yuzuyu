<yuzuyu>
	<ul class="yuzu-list">
		<li class="yuzu yuzu-posi-{positionNo} yuzu-anime-{animeNo}" each="{fall_yuzu}"></li>
	</ul>
	<ul class="bottom-yuge-list">
		<li class="yuge yuge-posi-{positionNo} yuge-anime-{animeNo}" each="{bottom_yuge}"></li>
	</ul>
	<script>
		this.fall_yuzu_count = opts.fall_yuzu_count || 4
		this.bottom_yuge_count = opts.bottom_yuge_count || 1

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
		this.bottom_yuge = makeRandomList(this.bottom_yuge_count)
	</script>
</yuzuyu>
