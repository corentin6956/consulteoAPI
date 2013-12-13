'use strict';


// Declare app level module which depends on filters, and services
var consulteoApp = angular.module('consulteoApp', ['ngRoute', 'ngResource']);

consulteoApp.config(['$routeProvider',
	function($routeProvider) {
    $routeProvider
		.when('/view1',
			{
				templateUrl: 'angapp/partials/partial1.html',
				controller: 'MyCtrl1'
			})
		.when('/view2',
			{
				templateUrl: 'angapp/partials/partial2.html',
				controller: 'MyCtrl2'
			})
		.when('/utilisateurs',
			{
				templateUrl: 'angapp/partials/utilisateurs-list.html',
				controller: 'UtilisateursCtrl'
			})
		.when('/utilisateurs/new',
			{
				templateUrl: 'angapp/partials/utilisateurs-edit.html',
				controller: 'UtilisateursNewCtrl'
			})
		.when('/utilisateurs/:utilisateurId/edit',
			{
				templateUrl: 'angapp/partials/utilisateurs-edit.html',
				controller: 'UtilisateursCtrl'
			})
		.when('/utilisateurs/:utilisateurId',
			{
				templateUrl: 'angapp/partials/utilisateurs-show.html',
				controller: 'UtilisateursCtrl'
			})
		.when('/interlocuteurs',
			{
				templateUrl: 'angapp/partials/interlocuteurs-list.html',
				controller: 'InterlocuteursCtrl'
			})
		.when('/interlocuteurs/new',
			{
				templateUrl: 'angapp/partials/interlocuteurs-edit.html',
				controller: 'InterlocuteursCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId/edit',
			{
				templateUrl: 'angapp/partials/interlocuteurs-edit.html',
				controller: 'InterlocuteursCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId',
			{
				templateUrl: 'angapp/partials/interlocuteurs-show.html',
				controller: 'InterlocuteursCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId/postes/new',
			{
				templateUrl: 'angapp/partials/postes-edit.html',
				controller: 'PostesCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId/postes/:posteId/edit',
			{
				templateUrl: 'angapp/partials/postes-edit.html',
				controller: 'PostesCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId/echanges/new',
			{
				templateUrl: 'angapp/partials/echanges-edit.html',
				controller: 'EchangesCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId/echanges/:echangeId/edit',
			{
				templateUrl: 'angapp/partials/echanges-edit.html',
				controller: 'EchangesCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId/cadeaux/new',
			{
				templateUrl: 'angapp/partials/cadeaux-edit.html',
				controller: 'CadeauxCtrl'
			})
		.when('/interlocuteurs/:interlocuteurId/cadeaux/:cadeauId/edit',
			{
				templateUrl: 'angapp/partials/cadeaux-edit.html',
				controller: 'CadeauxCtrl'
			})
		.otherwise({redirectTo: '/utilisateurs'});
	}]);
consulteoApp.config(function($httpProvider){
    delete $httpProvider.defaults.headers.common['X-Requested-With'];
	delete $httpProvider.defaults.headers.common['Origin'];
});
