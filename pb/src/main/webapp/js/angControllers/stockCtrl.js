angular.module('pharmaApp').controller('stockCtrl', function($scope) {
  
	angular.element(document).ready(function () {
						$('#allProducts-table').DataTable({
							data : $scope.tableData
						});
    });
	$scope.tableData = [
		  [
			    "Trident",
			    "Internet Explorer 4.0",
			    "Win 95+",
			    "4",
			    "X"
			  ],
			  [
			    "Trident",
			    "Internet Explorer 5.0",
			    "Win 95+",
			    "5",
			    "C"
			  ]
			];
	
});



