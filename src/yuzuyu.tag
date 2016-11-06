<yuzuyu>
	<ul class="yuzu-list">
		<li class="yuzu yuzu-posi-{positionNo} yuzu-anime-{animeNo}" each="{fall_yuzu}"></li>
	</ul>
	<script>
		this.fall_yuzu_count = opts.fall_yuzu_count || 4
		let fall_yuzu = []
		for(let i = 0; i < this.fall_yuzu_count; i++) {
			let yuzu = {
				positionNo: (0|Math.random()*40) + 1,
				animeNo: (0|Math.random()*40) + 1
			}
			fall_yuzu.push(yuzu)
		}
		this.fall_yuzu = fall_yuzu
	</script>
</yuzuyu>
