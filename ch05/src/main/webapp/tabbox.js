var TabBox = {
	_onTabClick: function(){
		$('.tab-box li.selected').removeClass("selected");
		$(this).addClass("selected");
	},
	_initialize: function(){
		$('.tab-box li').click(TabBox._onTabClick);
	},
	init: function(){
		$(TabBox._initialize);
	}
}