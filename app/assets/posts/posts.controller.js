(function() {
    'use strict';

    function PostsController(PostFactory) {

        var vm = this;

        // vm callable methods
        vm.test = "Hello World"

        vm.getPosts = getPosts;
        vm.getPost = getPost;
        vm.createPost = createPost;
        vm.updatePost = updatePost;
        vm.deletePost = deletePost;

        // instatiaded functions
        activate();

        // defined methods
        function activate() {
            getPosts()
        }

        // INDEX
        function getPosts() {
            return PostFactory.getPosts() // <---
                .then(setPosts)
        }


        // SHOW
        function getPost() {

        }

        function setPosts(data) { // <--
            return vm.posts = data;
        }

        // CREATE
        function createPost() {
            return PostFactory.createPost(vm.newPost)
                // after creating a post get all posts again and update the page
                .then(getPosts)
        }
        // UPDATE
        function updatePost() {

        }

        // DELETE
        function deletePost() {

        }
    };

    angular
        .module('app')
        .controller('PostsController', PostsController);
}());