<yuzuyu>
	<ul class="yuzu-list">
		<li class="yuzu yuzu-posi-{positionNo} yuzu-anime-{animeNo}" each="{fall_yuzu}"></li>
	</ul>
	<div class="yuge bottom-yuge"></div>
	<script>
		this.fall_yuzu_count = opts.fall_yuzu_count || 4

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
	</script>
</yuzuyu>
