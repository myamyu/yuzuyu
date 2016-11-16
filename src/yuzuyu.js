import './yuzuyu.scss';
import './yuzuyu.tag';

let d = document, 
	yuzuyuWrap = d.getElementById('myamyu-yuzuyu');

if(!yuzuyuWrap){
	yuzuyuWrap = d.createElement('div');
	yuzuyuWrap.setAttribute('id', 'myamyu-yuzuyu');
	d.body.appendChild(yuzuyuWrap);
}

riot.mount('#myamyu-yuzuyu', 'yuzuyu', {
	fall_yuzu_count: (0|Math.random()*8)+4,
	hokkori_yuge_count: (0|Math.random()*4)+4
});
