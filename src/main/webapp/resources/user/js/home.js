//Document ready thì show loại sách và số lượng trong giỏ hàng (jquery ajax)
$(function(){
	$.get(path + "/categories", function(data) {
		$('.dropdown-item').html(data);
	});
	$.get(path + "/countItems", function(data) {
		$('#basket_total').html(data);
	});
	
	$.get(path + "/countItem", function(data) {
			$('#favourite_total').html(data);
		});
});
//hàm xử lý add 1 sách vào giỏ hàng (jquery ajax)
function addBasket(productId) {
	$.get(path + "/addItem/" + productId, function(data) {
		$('#basket_total').html(data);
		window.scrollTo({ top: 0, behavior: 'smooth' });
	});
}

function addfavourite(productId) {
	$.get(path + "/addItems/" + productId, function(data) {
		$('#favourite_total').html(data);
		window.scrollTo({ top: 0, behavior: 'smooth' });
	});
}


//hàm xử lý cập nhật lại số lượng trong giỏ hàng (jquery ajax)
function updateBasket(productId, value) {
	$.get(path + "/updateCart/" + productId + "/" + value, function() {
		window.location.reload();
	});
}
//hàm xử lý xóa 1 sách trong giỏ hàng (jquery ajax)
function removeItem(productId) {
	if (confirm('Bạn có muốn xóa không?')) {
		$.get(path + "/removeItem/" + productId, function() {
			window.location.reload();
		});
	}
}

function removeItems(productId) {
	if (confirm('Bạn có muốn xóa không?')) {
		$.get(path + "/removeItems/" + productId, function() {
			window.location.reload();
		});
	}
}