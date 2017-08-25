<div class="row">
<div class="col-xs-12 col-md-9">

<!-- 	{if $items|count == 0}
		{if $status|default:'active' == 'active'}
			{if $origin|default:'mine' == 'shared'}
			<div class="alert alert-warning" role="alert">{tp}You don't have access to other users' wallets{/tp}</div>
			{else}
			<div class="alert alert-warning" role="alert">{tp}You have no wallets{/tp} <a href="{$settings->site_path}/wallets/add" class="btn btn-primary btn-xs" id="add_wallet_button">{tp}Add{/tp}</a></div>
			{/if}
		{else}
			<div class="alert alert-warning" role="alert">{tp}You have no hidden wallets{/tp}</div>
		{/if}
	{else}
		<div class="list-group wallet_item" id="wallet_items">
		{foreach from=$items item=i}
			<a href="{$settings->site_path}/wallets/{$i->id}" class="list-group-item item" data-id="{$i->id}"
				{if $i->origin|default:'mine' == 'shared'}style="background: #eee"{/if}>


				<div class="pull-right {if $i->total >= 0}text-success{else}text-danger{/if}
				transaction_amount"><strong>{if $i->total < 0}-{/if}{if $i->currency == 'USD'}${/if}{$i->total|rational}.<sup>{$i->total|decimal}</sup>{if $i->currency != 'USD'} {$i->currency}{/if}</strong></div>

				<div class="item_buttons hideme wallet_buttons">
				{if $i->origin|default:'mine' == 'mine'}
					<button class="btn btn-default btn-xs item_button_remove"><span class="glyphicon glyphicon-trash"></span> {if $i->status|default:'active' == 'active'}{tp}Hide{/tp}{else}{tp}Remove{/tp}{/if}</button>
					{if $i->status|default:'active' == 'active'}
					<button class="btn btn-default btn-xs item_button_edit"><span class="glyphicon glyphicon-pencil"></span> {tp}Edit{/tp}</button>
					<button class="btn btn-default btn-xs item_button_accesses"><span class="glyphicon glyphicon-user"></span> {tp}Manage Accesses{/tp}</button>
					{/if}
					{if $i->status|default:'active' == 'hidden'}
					<button class="btn btn-default btn-xs item_button_restore"><span class="glyphicon glyphicon-repeat"></span> {tp}Restore{/tp}</button>
					{/if}
				{/if}
				</div>
				<h4 class="list-group-item-heading">
				{if $i->origin|default:'mine' == 'shared'}<span class="glyphicon glyphicon-share-alt" title="{tp}This wallet is shared with you by another user{/tp}"></span> {/if}
				{$i->name|escape:'html'}</h4>

			</a>
		{/foreach}

		{if $status|default:'active' == 'active'}
			<div class="list-group-item list-group-item-info"><a href="{$settings->site_path}/wallets/add" class="btn btn-primary" id="add_wallet_button">{tp}Add{/tp}</a></div>
		{/if}
		</div>
	{/if} -->


<div class="home-module">
	<h2 class="heading">What's affecting your score</h2>
	<div class="">
		<div id="chart">
		</div>
	</div>
</div>

<script>
var chart = c3.generate({
    data: {
        columns: [
            ['data', 91.4]
        ],
        type: 'gauge',
        onclick: function (d, i) { console.log("onclick", d, i); },
        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
    },
    gauge: {
//        label: {
//            format: function(value, ratio) {
//                return value;
//            },
//            show: false // to turn off the min/max labels.
//        },
//    min: 0, // 0 is default, //can handle negative min e.g. vacuum / voltage / current flow / rate of change
//    max: 100, // 100 is default
//    units: ' %',
//    width: 39 // for adjusting arc thickness
    },
    color: {
        pattern: ['#FF0000', '#F97600', '#F6C600', '#60B044'], // the three color levels for the percentage values.
        threshold: {
//            unit: 'value', // percentage is default
//            max: 200, // 100 is default
            values: [30, 60, 90, 100]
        }
    },
    size: {
        height: 180
    }
});
// 
// setTimeout(function () {
//     chart.load({
//         columns: [['data', 10]]
//     });
// }, 1000);
//
// setTimeout(function () {
//     chart.load({
//         columns: [['data', 50]]
//     });
// }, 2000);
//
// setTimeout(function () {
//     chart.load({
//         columns: [['data', 70]]
//     });
// }, 3000);
//
// setTimeout(function () {
//     chart.load({
//         columns: [['data', 0]]
//     });
// }, 4000);
//
// setTimeout(function () {
//     chart.load({
//         columns: [['data', 100]]
//     });
// }, 5000);
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
