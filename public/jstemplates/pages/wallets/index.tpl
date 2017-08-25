<div class="row">
<div class="col-xs-12 col-md-9">

	<div id="chart"></div>
	<div class="reason">
		<h2 class="heading">What's affecting your score</h2>

		<div class="reason-module">
			<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825112936/icon-credit-card-blue-1.png" alt="income">
			<h3 class="reason-heading">Credit Score</h3>
			<div class="progress">
			  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20"
			  aria-valuemin="0" aria-valuemax="100" style="width:20%">
			    <span class="sr-only">70% Complete</span>
			  </div>
			</div>
			<p class="points">24 out of 50 points</p>
		</div>
		<div class="reason-module">
			<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825112901/icon-money.png" alt="income" id="income">
			<h3 class="reason-heading">Income</h3>
			<div class="progress">
			  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80"
			  aria-valuemin="0" aria-valuemax="100" style="width:45%">
			    <span class="sr-only">70% Complete</span>
			  </div>
			</div>
			<p class="points">15 out of 20 points</p>
		</div>
		<div class="reason-module">
			<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825113313/icon-chart-rebalancing.png" alt="income">
			<h3 class="reason-heading">Assets</h3>
			<div class="progress">
			  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10"
			  aria-valuemin="0" aria-valuemax="100" style="width:10%">
			    <span class="sr-only">70% Complete</span>
			  </div>
			</div>
			<p class="points">5 out of 20 points</p>
		</div>
		<div class="reason-module">
			<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825112904/icon-hand-percentage-blue.png" alt="income">
			<h3 class="reason-heading">Lorem</h3>
			<div class="progress">
			  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90"
			  aria-valuemin="0" aria-valuemax="100" style="width:90%">
			    <span class="sr-only">70% Complete</span>
			  </div>
			</div>
			<p class="points">6 out of 10 points</p>
		</div>
	</div>

	<script>
	var chart = c3.generate({
	    data: {
	        columns: [
	            ['score', 7.4]
	        ],
	        type: 'gauge',
	        onclick: function (d, i) { console.log("onclick", d, i); },
	        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
	        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
	    },
	    gauge: {
				width: 14,
				min: 0,
				max: 10,
				label: {
    		format: function (value, ratio) {
      	return value + '!';
    	}
  }
	    },
	    color: {
	        pattern: ['#FF0000', '#F97600', '#F6C600', '#60B044'], // the three color levels for the percentage values.
	        threshold: {
	            values: [0.3, 0.6, 0.9, 1.0]
	        }
	    },
	    size: {
	        height: 180
	    }
	});
	</script>





</div>
<div class="col-xs-12 col-md-3">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">{tp}Filter{/tp}</h3>
		</div>
		<div class="panel-body">
			<ul class="nav nav-pills nav-stacked">
				<li {if $status|default:'active' == 'active'}class="active"{/if}><a href="#" class="filter_menu" data-status="active"><span class="glyphicon glyphicon-ok"></span> {tp}Active{/tp}</a></li>
				<li {if $status|default:'active' == 'hidden'}class="active"{/if}><a href="#" class="filter_menu" data-status="hidden"><span class="glyphicon glyphicon-trash"></span> {tp}Trash{/tp}</a></li>
			</ul>
		</div>
	</div>


	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">{tp}Access{/tp}</h3>
		</div>
		<div class="panel-body">
			<ul class="nav nav-pills nav-stacked">
				<li {if $origin|default:'both' == 'both'}class="active"{/if}><a href="#" class="origin_menu" data-origin="both"><span class="glyphicon glyphicon-ok"></span> {tp}Both{/tp}</a></li>
				<li {if $origin|default:'both' == 'mine'}class="active"{/if}><a href="#" class="origin_menu" data-origin="mine"><span class="glyphicon glyphicon-user"></span> {tp}Yours{/tp}</a></li>
				<li {if $origin|default:'both' == 'shared'}class="active"{/if}><a href="#" class="origin_menu" data-origin="shared"><span class="glyphicon glyphicon-share-alt"></span> {tp}Shared with you{/tp}</a></li>
			</ul>
		</div>
	</div>


</div>
</div>


<div class="hidden">
	<span id="tour_step_0">{t}Here is quick introdution to DimeShift.<br><br>Our demo robot has created few sample wallets for you to check out.{/t}</span>
	<span id="tour_step_1">{t}But you can add as many as you want.<br><br>Different name, different currencies{/t}</span>
	<span id="tour_step_2">{t}There're few options availiable when you move your mouse over your wallet.<br><br>
	But lets jump directly to wallet page.<br><br>Click any row to jump to it.
	{/t}</span>
</div>
git 
