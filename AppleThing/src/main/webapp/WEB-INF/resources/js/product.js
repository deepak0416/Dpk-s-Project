angular.module('sortApp', [])

.controller('mainController', function($scope) {
  $scope.sortType     = 'name'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.searchFish   = '';     // set the default search/filter term
  
  // create the list of sushi rolls 
  $scope.product = [
    { pid: '1', item: 'iphone 6', price: 2 },
    { pid: '2', item: 'apple watch', price: 2 },
    { pid: '3', item: 'ipad', price: 2 },
  ];
  
});