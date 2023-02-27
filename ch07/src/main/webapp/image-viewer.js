var ImageViewer = {
	init: function() {
		$(ImageViewer._changeBtnClick);
		$(ImageViewer._slideshowBtnClick);
		$(ImageViewer._imgClick);
		
	},
	_changeBtnClick: function() {
		$("#btn-change").click(ImageViewer._changeImage);
	},
	_changeImage: function() {
		var index = Math.floor(Math.random() * ImageViewer._images.length);
		if (index != ImageViewer._tmp) {
			ImageViewer._tmp = index;
			$("img").attr("src", "images/" + ImageViewer._images[index].file);
			$("img").attr("title", ImageViewer._images[index].name);
		} else {
			ImageViewer._changeImage();
		}
	},
	_slideshowBtnClick: function() {
		$("#btn-slideshow").click(ImageViewer._setInterval);
	},
	_setInterval: function() {
		if (ImageViewer._intervalId == null) {
			ImageViewer._intervalId = setInterval(ImageViewer._changeImage, 1000);
		} else {
			clearInterval(ImageViewer._intervalId);
		}
	},
	_imgClick:function(){
		$("img").click(ImageViewer._changeImage);
	},
	_tmp: null,
	_intervalId: null,
	_images: [
		{ name: '펭귄', file: 'Penguins.jpg' },
		{ name: '튤립', file: 'Tulips.jpg' },
		{ name: '등대', file: 'Lighthouse.jpg' },
		{ name: '코알라', file: 'Koala.jpg' },
		{ name: '젤리피쉬', file: 'Jellyfish.jpg' },
		{ name: '수국', file: 'Hydrangeas.jpg' },
		{ name: '사막', file: 'Desert.jpg' },
		{ name: '국화', file: 'Chrysanthemum.jpg' }
	]
}