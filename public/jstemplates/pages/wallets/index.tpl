<div class="row">
	<div  id="first" class="col-xs-12 col-md-9">
		<div>
			<div id="chart"></div>
			<script>
			// alert('a');
			var chart = c3.generate({
			    data: {
			        columns: [
			            ['score', 0]
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
		      			return value;
		    			}
		  			}
			    },
			    color: {
			        pattern: ['#FF0000', '#F97600', '#F6C600', '#15c0f1'], // the three color levels for the percentage values.
			        threshold: {
			            values: [0.3, 0.6, 0.9, 1.0]
			        }
			    },
			    size: {
			        height: 180
			    }
			});

			setTimeout(function () {
			    chart.load({
			        columns: [['score', 6.2]]
			    });
					$('.c3-gauge-value').css("font-size","55pt");
					$('.c3-gauge-value').css("letter-spacing","-2pt");
			}, 100);



				d3.select('.c3-gauge-value').attr('dy', -20)
			</script>
			<div class="health-score-container">
				<h1 style="text-align:center; line-height: 7pt; color: rgb(26,123,179);font-size:20px;">FINANCIAL HEALTH SCORE</h1>
				<h2 style="text-align:center; font-size:14px; color: grey; letter-spacing:0pt; margin-top:14px;">8.5 or higher needed to qualify</h2>
			</div>
			<br><br>
		</div>
		<div class="reason">
			<h2 class="heading">What's affecting your score</h2>
			<a href="#" id="to2" class="reason-module">
				<img class="notification-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825113319/circle-3.png" alt="income">
				<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825112936/icon-credit-card-blue-1.png" alt="income">
				<h3 class="reason-heading">Credit Score</h3>
				<div class="progress">
				  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20"
				  aria-valuemin="0" aria-valuemax="100" style="width:20%">
				    <span class="sr-only">70% Complete</span>
				  </div>
				</div>
				<p class="points">24 out of 50 points</p>
			</a>
			<a href="" class="reason-module">
				<img class="notification-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825113316/circle-1.png" alt="income">
				<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825112901/icon-money.png" alt="income" id="income">
				<h3 class="reason-heading">Income</h3>
				<div class="progress">
				  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80"
				  aria-valuemin="0" aria-valuemax="100" style="width:45%">
				    <span class="sr-only">70% Complete</span>
				  </div>
				</div>
				<p class="points">15 out of 20 points</p>
			</a>
			<a href="" class="reason-module">
				<img class="notification-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825113318/circle-2.png" alt="income">
				<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825113313/icon-chart-rebalancing.png" alt="income">
				<h3 class="reason-heading">Assets</h3>
				<div class="progress">
				  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10"
				  aria-valuemin="0" aria-valuemax="100" style="width:10%">
				    <span class="sr-only">70% Complete</span>
				  </div>
				</div>
				<p class="points">5 out of 20 points</p>
			</a>
			<a href="" class="reason-module">
				<img class="reason-icon" src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825112904/icon-hand-percentage-blue.png" alt="income">
				<h3 class="reason-heading">Lorem</h3>
				<div class="progress">
				  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90"
				  aria-valuemin="0" aria-valuemax="100" style="width:90%">
				    <span class="sr-only">70% Complete</span>
				  </div>
				</div>
				<p class="points">6 out of 10 points</p>
			</a>
		</div>
	</div>

	<div class="col-xs-12 col-md-9" id="third" style="display:none;">
		<div class="credit-impact">
			<div class="credit-impact-module">
				<h1>72%</h1>
				<p>High Impact</p>
				<div class="impact-bucket bg-danger text-white">50%+</div>
				<div class="impact-bucket bg-warning text-warning">30%-49%</div>
				<div class="impact-bucket bg-success text-success">10%-29%</div>
				<div class="impact-bucket bg-info text-info">0-9%</div>
				<p class="impact-description">Poor</p>
				<p class="impact-description">Average</p>
				<p class="impact-description">Good</p>
				<p class="impact-description">Excellent</p>
			</div>
		</div>

		<div class="improve-score">
			<h3 class="heading">Improve your sofi score</h3>
			<div class="improve-score-module">
				<p><b>Getting your usage down to 29% will raise your SoFi score by 2.5.</b></p>
				<p>We can help you create a viable payment plan to pay the difference of $2802 on your own timeline.</p>
				<button class="btn btn-primary" id="make-it-rain">Start goal</button>
			</div>
		</div>

		<div class="credit-account">
			<h3 class="heading float-left">Your credit accounts</h3>
			<h3 class="heading float-right">8</h3>
			<div class="credit-account-module">
				<div class="credit-usage">
					<div>
						<h4>$7,198</h4>
						<p>Credit Used</p>
					</div>
					<div>
						<h4>$10,000</h4>
						<p>Total Credit</p>
					</div>
				</div>
				<div class="account">
					<p class="bank">Bk of Amer</p>
					<p class="perc text-danger">62%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:62%">
					  </div>
					</div>
					<p class="balance bank">Balance $1240</p>
					<p class="balance perc">$2000</p>
				</div>
				<div class="account">
					<p class="bank">Chase</p>
					<p class="perc text-warning">48%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:48%">
					  </div>
					</div>
					<p class="balance bank">Balance $578</p>
					<p class="balance perc">$1200</p>
				</div>
				<div class="account">
					<p class="bank">Chase</p>
					<p class="perc text-warning">32%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:32%">
					  </div>
					</div>
					<p class="balance bank">Balance $256</p>
					<p class="balance perc">$800</p>
				</div>
				<div class="account">
					<p class="bank">Citi Bank</p>
					<p class="perc text-danger">89%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:89%">
					  </div>
					</div>
					<p class="balance bank">Balance $1335</p>
					<p class="balance perc">$1500</p>
				</div>
				<div class="account">
					<p class="bank">Bk of Amer</p>
					<p class="perc text-primary">4%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:4%">
					  </div>
					</div>
					<p class="balance bank">Balance $40</p>
					<p class="balance perc">$1000</p>
				</div>
				<div class="account">
					<p class="bank">Bk of Amer</p>
					<p class="perc text-success">24%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:24%">
					  </div>
					</div>
					<p class="balance bank">Balance $480</p>
					<p class="balance perc">$2000</p>
				</div>
				<div class="account">
					<p class="bank">Bk of Amer</p>
					<p class="perc text-success">18%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:18%">
					  </div>
					</div>
					<p class="balance bank">Balance $135</p>
					<p class="balance perc">$750</p>
				</div>
				<div class="account">
					<p class="bank">Bk of Amer</p>
					<p class="perc text-primary">9%</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="10"
					  aria-valuemin="0" aria-valuemax="100" style="width:9%">
					  </div>
					</div>
					<p class="balance bank">Balance $67</p>
					<p class="balance perc">$750</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 col-md-9" id="second" style="display:none;">
		<div class="credit-score">
			<div class="credit-score-module">
				<h1>715<span>Average</span></h1>
				<div id="chart2"></div>

				<script>
				var chart2 = c3.generate({
						bindto: '#chart2',
						data: {
						        x: 'x',
						        columns: [
						            ['x', '2017-07-31', '2017-08-07', '2017-08-14', '2017-08-21'],
						            ['Credit Score', 708, 708, 718, 718]
						        ]
						    },
								size: {
  width: 445
},
						    axis: {
						        x: {
						            type: 'timeseries',
						            tick: {
						                values: ['2017-07-31', '2017-08-07', '2017-08-14', '2017-08-21']
						            }
						        },
						        y: {
						            type: 'number',
						            tick: {
						                values: ['705', '708', '711', '714', '717', '720']
						            }
						        }
						    }

				});
				</script>
				<img src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825151800/info-button.png" class="info-icon">
				<p class="info"><b>Did you know...</b><br>Alumni of Duke Univeristy have an average credit score of 780. SoFi members have an average credit score of 800.</p>

			</div>
		</div>

		<div class="action-item">
			<h3 class="heading">Action items</h3>
			<div class="action to3">
				<div class="circle"></div>
				<p>Decrease your credit usage</p>
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</div>
			<div class="action to3">
				<div class="circle"></div>
				<p>Decrease your credit usage</p>
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</div>
		</div>
	</div>
</div>

<div>
	<div class="col-xs-12 col-md-3">
		<div class="events">
			<h2 class="heading">Recommended Events</h2>
			<img src="https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170825164735/Screen-Shot-2017-08-25-at-4.46.54-PM.png">
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

<div class="col-xs-12 col-md-3" id="fourth">

</div>


<div class="dossier"></div>

<script>
var papers = [];

function Paper() {

  this.type = 'paper'
  this.dossier = document.querySelector('.dossier')
  this.w = 20
  this.h = 30
  this.x
  this.y
  this.scale
  this.speed
  this.node
  this.shadow

  this.getScale = function(min, max) {
    this.scale = Math.random() * (max - min) + min
  }

  this.getPosition = function() {
    var w = parseFloat( window.getComputedStyle( this.dossier ).width )
    var h = parseFloat( window.getComputedStyle( this.dossier ).height )
    minX = 0 - ( this.w * this.scale / 2 )
    maxX = w + ( this.w * this.scale / 2 )
    minY = 0 - ( this.h * this.scale / 2 ) - h
    maxY = 0 - ( this.h * this.scale / 2 )
    this.x = Math.random() * (maxX - minX) + minX
    this.y = Math.random() * (maxY - minY) + minY
  }

  this.getSpeed = function() {
    this.speed = this.scale
  }

  this.createNode = function() {
    var paper
    paper = document.createElement('div')
    paper.classList.add(this.type)
    paper.style.left = this.x + 'px'
    paper.style.top = this.y + 'px'
    this.dossier.appendChild(paper)
    this.node = paper
    this.createLines()
    this.createShadow()
    this.updateNode()
  }

  this.updateNode = function() {
    this.setHighlight()
    this.node.style.zIndex          = parseInt( this.scale * 100 )
    this.node.style.webkitTransform = 'scale(' + this.scale + ')' +'rotate(' + Math.random() * 90 + 'deg)';
    this.node.style.MozTransform    = 'scale(' + this.scale + ')'
    +'rotate(' + Math.random() * 90 + 'deg)';
    this.node.style.msTransform     = 'scale(' + this.scale + ')'
    +'rotate(' + Math.random() * 90 + 'deg)';
    this.node.style.OTransform      = 'scale(' + this.scale + ')'
    +'rotate(' + Math.random() * 90 + 'deg)';
    this.node.style.transform       = 'scale(' + this.scale + ')'
    +'rotate(' + Math.random() * 90 + 'deg)';
    this.node.style.marginLeft      = - this.w * this.scale / 2 + 'px'
    this.node.style.marginTop       = - this.h * this.scale / 2 + 'px'
    this.node.style.left            = this.x + 'px'
    //this.node.style.
    this.shadow.style.opacity       = 1 - mapRange( this.scale, .5, 4, 0, 1 )
  }

  this.createLines = function() {
    for (var i = 0; i < 5; i++) {
      var line
      line = document.createElement('div')
      line.classList.add('line')
      this.node.appendChild(line)
    }
  }

  this.createShadow = function() {
    var shadow
    shadow = document.createElement('div')
    shadow.classList.add('shadow')
    this.node.appendChild(shadow)
    this.shadow = shadow
  }

  this.setHighlight = function() {
    var index = randomInt( 0, 4 );
    var lines = this.node.querySelectorAll( '.line' );
    for (var i = 0; i < lines.length; i++) {
      lines[ i ].classList.remove( 'highlight' )
    }
    lines[ index ].classList.add( 'highlight' )
  }

  this.isGone = function() {
    var h = parseFloat( window.getComputedStyle( this.dossier ).height )
    if (this.y - (this.h * this.scale ) > h) {
      return true
    } else {
      return false
    }
  }

  this.animate = function() {
    this.y += this.speed
    this.node.style.top = this.y + 'px'
    if (this.isGone()) {
      this.reset()
    }
  }

  this.reset = function() {
    this.getPosition()
    this.getSpeed()
    this.updateNode()
  }

  this.getScale(0.5, 4)
  this.getPosition()
  this.getSpeed()
  this.createNode()
  this.animate()

}

function setup() {
  for (var i = 0; i < 120; i++) {
    papers.push(new Paper())
  }
}

function draw() {
  papers.forEach(function(paper) {
    paper.animate()
  })
}

/* helpers */

function interval(callback, delay) {
  var dateNow = Date.now,
    requestAnimation = window.requestAnimationFrame,
    start = dateNow(),
    stop,
    intervalFunc = function() {
      dateNow() - start < delay || (start += delay, callback());
      stop || requestAnimation(intervalFunc)
    }
  requestAnimation(intervalFunc);
  return {
    clear: function() {
      stop = 1
    }
  }
}

function randomInt(min,max) {
  return Math.floor(Math.random()*(max-min+1)+min);
}

function mapRange(value, low1, high1, low2, high2) {
    return low2 + (high2 - low2) * (value - low1) / (high1 - low1);
}

/* end helpers */

setup()
interval(draw, 15)
</script>
<style>

.dossier {
	/*display:none !important;*/
  background: rgba(0,0,0,0);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  overflow: hidden;
  opacity: 0;
	z-index:-1;
}

.paper {
  position: absolute;
  width: 3rem;
  height: 1.5rem;
  background: url(https://d32ijn7u0aqfv4.cloudfront.net/wp/wp-content/uploads/20170824145258/sofi-money.png);
  background-size: 100%;
  box-sizing: border-box;
}

.shadow {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  min-width: 100%;
  min-height: 100%;
  opacity: 0;
  background: #001B29;
}

</style>

<script>
	$('#to2').click(function() {
		$('#first').hide();
		$('#second').show();
	});
	$('.to3').click(function() {
		$('#second').hide();
		$('#third').show();

	});
	showing = false;
	$('.navbar-toggle').click(function() {
		if (!showing) {
			$('.dossier').css('opacity', 1);
			$('.dossier').css('z-index', 99);
			showing = true;
		} else {
			$('.dossier').css('opacity', 0);
			$('.dossier').css('z-index', -1);

			showing=false;

		}
		// if (notShown) {
		// 	$('.dossier').css('opacity', 1);
		// } else {
		// 	$('.dossier').css('opacity', 0);
		// 	!notShown;
		// }
	})
</script>
