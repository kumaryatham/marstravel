(function() {
    'use strict';

    angular
        .module('app')
        .config(function($stateProvider, $urlRouterProvider) {
            $stateProvider
                .state('home', {
                    templateUrl: '/home.html',
                    controller: 'HomeController as vm'
                })
                .state('home.posts', {
                    templateUrl: 'posts/posts.html',
                    controller: 'PostsController as vm'
                })
            $urlRouterProvider.otherwise('/');
        });
}());