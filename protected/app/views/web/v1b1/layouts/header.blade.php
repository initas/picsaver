<nav id="header" class="navbar-fixed-top">
	<a class="hidden-xs" href="{{URL::to('/')}}"><img id="main-logo" src="{{URL::to('img/stock/web/v1b1/logo.PNG')}}"></a>
	<div class="container-fluid">
		<div id="main-search-bar" class="input-group">
			<span class="input-group-addon btn" data-toggle="swipe-bar"><i class="fa fa-bars"></i></a></span>
			<input class="form-control" name="search" placeholder="Search Here" autocomplete="off" autofocus="autofocus" type="text">
			<span class="input-group-addon btn"><span class="glyphicon glyphicon-search"></span></span>
		</div>
		<div id="main-buttons" class="btn-group btn-group-justified" role="group" aria-label="...">
			<div class="btn-group" role="group">
				<a href="{{URL::to('/album/create')}}" type="button" class="btn btn-default">&nbsp;<i class="fa fa-plus"></i>&nbsp;</a>
			</div>
			<div class="btn-group" role="group">
				<a href="{{URL::to('/album')}}" type="button" class="btn btn-default">&nbsp;<i class="fa fa-book"></i>&nbsp;</a>
			</div>
			<div class="btn-group" role="group">
				<a href="{{URL::to('/image')}}" type="button" class="btn btn-default">&nbsp;<i class="fa fa-image"></i>&nbsp;</a>
			</div>
			<!--
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-user"></i> <span class="caret"></span> </button>
				<ul class="dropdown-menu dropdown-menu-right" role="menu">
					<li><a href="#">Profile</a></li>
					<li><a href="#">Log Out</a></li>
				</ul>
			</div>
			-->
		</div>
		<div class="clearFix"></div>
	</div>
</nav>
