(function() {
    'use strict';
    // Model of the front end world
    function PostFactory($http) {
        return {
            getPosts:   getPosts,
            getPost:    getPost,
            createPost: createPost,
            updatePost: updatePost,
            deletePost: deletePost
        }

        // defined methods
        function getPosts() {
            return $http.get('/posts')
                .then(handleResponse)
                .catch(handleError)
        }

        function getPost(id) {
            return $http.get('/posts/' + id)
                .then(hanleResponse)
                .catch(hadndleError)
        }

        function createPost(post) {
            var req = {
                method: 'POST',
                url: '/posts',
                headers: {
                    'Content-Type': 'application/json'
                },
                data: {
                    post: post
                }
            }
            return $http(req)
                .catch(handleError)
        }

        function updatePost(post) {
            var req = {
                method: 'PUT',
                url: '/posts/' + post.id,
                headers: {
                    'Content-Type': 'application/json'
                },
                data: {
                    post: post
                }
            }
            return $http(req)
                .catch(handleError)
        }
        function deletePost(post) {
            var req = {
                method: 'DELETE',
                url: '/posts/' + post.id,
                headers: {
                    'Content-Type': 'application/json'
                },
                data: {
                    post: post
                }
            }
            return $http(req)
                .catch(handleError)

        }

        // handle $http responses

        function handleResponse(respose) {
            return response.data
        }

        function handleError(error) {
            console.log(error)
        }
    };

    angular
        .module('app')
        .factory('PostFactory', PostFactory);
}());