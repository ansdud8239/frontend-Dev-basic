var ImageViewer = {
	init:function(){
		
	},
	_changeImage: function(){
		var index = Math.floor(Math.random()*this._images.length);
		
	},
	_intervalId:null,
	_images : [
		{name:'펭귄',file:'Penguins.jpg'},
		{name:'튤립',file:'Tulips.jpg'},
		{name:'등대',file:'Lighthouse.jpg'},
		{name:'코알라',file:'Koala.jpg'},
		{name:'젤리피쉬',file:'Jellyfish.jpg'},
		{name:'수국',file:'Hydrangeas.jpg'},
		{name:'사막',file:'Desert.jpg'},
		{name:'국화',file:'Chrysanthemum.jpg'}
	]
}