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

});
