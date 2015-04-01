<!--required user object-->

<div class="sidebar">
	<div class="content">
		<div class="user-detail">
			<div class="img">
				<img src="{{URL::to('img/stock/web/v1b1/me.png')}}">
			</div>
			<div class="informations">
				<div class="username">{{'@'.$user['username']}}</div>
				<div class="full_name">{{$user['name']}}</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>