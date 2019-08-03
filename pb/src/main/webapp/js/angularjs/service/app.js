var app = angular.module('pharmaApp', [ 'ui.router', 'oc.lazyLoad' ]);

app.run(function($rootScope) {
	//
});

app.config([ '$stateProvider', function($stateProvider) {
	$stateProvider

	.state('dashboard', {
		url : '/dashboard',
		templateUrl : 'routeTemplates/dashboard.jsp',
	})
	.state('billing', {
		url: '/billing',
		templateUrl: 'routeTemplates/billing.jsp',
		controller: 'billingCtrl',
		resolve : {
			loadMyCtrl : [
					'$ocLazyLoad',
					function($ocLazyLoad) {
						return $ocLazyLoad
								.load({
									insertBefore : 'body script:last-of-type',
									files : ['js/angControllers/billingCtrl.js']
								});
					} ]
		}
	})
	.state('stock', {
		url: '/stock',
		templateUrl: 'routeTemplates/stock.jsp',
		controller: 'stockCtrl',
		resolve : {
			loadMyCtrl : [
					'$ocLazyLoad',
					function($ocLazyLoad) {
						return $ocLazyLoad
								.load({
									insertBefore : 'body script:last-of-type',
									files : [
										'templateAssets/js/dataTables/jquery.dataTables.js',
										'templateAssets/js/dataTables/dataTables.bootstrap.js',
										'js/angControllers/stockCtrl.js'
										]
								});
					} ]
		}
	})
	.state('addToStock', {
		url: '/addToStock',
		templateUrl: 'routeTemplates/addToStock.jsp',
		controller: 'addToStockCtrl',
		resolve : {
			loadMyCtrl : [
					'$ocLazyLoad',
					function($ocLazyLoad) {
						return $ocLazyLoad
								.load({
									insertBefore : 'body script:last-of-type',
									files : ['js/angControllers/addToStockCtrl.js',
										'templateAssets/plugins/date-picker/bootstrap-datepicker-1.3.0-min.js',
										'templateAssets/plugins/date-picker/bootstrap-datepicker-min.css',
										'css-for-routeTemplates/addToStock.css']
								});
					} ]
		}
	});
} ])