angular.module('pharmaApp').controller('addToStockCtrl', function($scope) {

	angular.element(document).ready(function() {
		$('.monthpicker').datepicker({
			autoclose : true,
			minViewMode : 1,
			format : 'mm/yyyy'
		});
		$('.datepicker').datepicker({
			format: 'dd/m/yyyy'
		});
	});
	
	$scope.blankForm = {ProductName:"", batchNo:"", mfgDate:"", expDate:"", importedDate:"", rate:"", mrp:"",};

		$scope.reset = function() {
		 $scope.product = angular.copy($scope.blankForm);
		//$scope.addProductForm.setPristine();
		$scope.addProductForm.$setUntouched();
	};
	//save product
	$scope.saveProduct = function() {
		console.log("SUBMITTED");
		console.log($scope.product);
		$scope.reset();
	}
	
	$scope.dataList = function() {
		var dataList = document.getElementById('products-list');
		//var input = document.getElementById('productName');
		var jsonOptions = [ "html", "head", "title","base", "link", "meta", "style","script" ];
		
		jsonOptions.forEach(function (item) {
            var option = document.createElement('option');
            option.value = item;
            dataList.appendChild(option);
		});
	}
	// call fun on page load
	$scope.dataList();
	
	$scope.product.productName = function() {
		console.log($scope.product.productName);
	}
});


// date picker example: http://jsfiddle.net/brunodd/k5zookLt/20/
