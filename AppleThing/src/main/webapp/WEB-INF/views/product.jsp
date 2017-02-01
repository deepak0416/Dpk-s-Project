<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Angular Sort and Filter</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <style>
        body { padding-top:50px; }
    </style>

    <!-- JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="resources/js/product.js"></script>

</head>
<body>
<div class="container" ng-app="sortApp" ng-controller="mainController">
  
  <div class="alert alert-info">
    <p>Sort Type: {{ sortType }}</p>
    <p>Sort Reverse: {{ sortReverse }}</p>
    <p>Search Query: {{ searchFish }}</p>
  </div>
  
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search da Fish" ng-model="searchFish">
      </div>      
    </div>
  </form>
  
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
            Sushi Roll 
            <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'fish'; sortReverse = !sortReverse">
          Fish Type 
            <span ng-show="sortType == 'fish' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'fish' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">
          Taste Level 
            <span ng-show="sortType == 'tastiness' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'tastiness' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="roll in sushi | orderBy:sortType:sortReverse | filter:searchFish">
        <td>{{ roll.name }}</td>
        <td>{{ roll.fish }}</td>
        <td>{{ roll.tastiness }}</td>
      </tr>
    </tbody>
    
  </table>
  
  <p class="text-center text-muted">
    <a href="#" target="_blank">Read the Tutorial</a>
  </p>
  
  <p class="text-center">
    by <a href="http://scotch.io" target="_blank">scotch.io</a>
  </p>
  
</div>

</body>
</html>