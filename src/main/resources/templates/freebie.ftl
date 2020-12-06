<!DOCTYPE html>
<html lang="en">
	<head>
		 <!-- Theme Made By www.w3schools.com -->
	  <title>Freebie Downloand</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="/css/style.css">
	  <link rel="stylesheet" href="/css/bubbly-button.css">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="/js/jquery.flurry.js"></script>
	</head>

	<body >
		<div id="snow">
			<div style="margin-top: 10%; margin-left: 20%; margin-right: 20%" class="row">
			  <div style="margin-bottom: 30%" class="col">
				<div>
					<img style="min-width:400px; display: block; margin-left: auto; margin-right: auto; width: 50%;" src="/images/merry merry merry.jpg" width="80%" alt="Italian Trulli">
				</div>
			  
			  </div>
			  
			  
			  <div style="min-width:400px; display: block; margin-left: auto; margin-right: auto; text-align:center" class="col">
			  
				<h1 style="font-size:2.2rem">Freebie</h1>
				<h2 style="font-size:1.7rem">Christmas decor for your home!</h2>
				<label  style="margin-top: 5%; margin-bottom: 5%">Hi there! Download your FREE
					printable here! Instant wall art.
					Simply download, print, and display
					as you want! Enjoy the flexibility of
					downloading this print design in a
					multiple of sizes.</label>
					
				<form id="hotDealForm" action="/download" method="POST">
					 <div style="margin-bottom: 5%">
						<input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
						<br>
						<input type="text" name="name" class="form-control" id="exampleInputPassword1" placeholder="Name" maxlength="20" required>
					</div>
					
					<div class="bubblyBtnOutter">
						<div class="bubblyBtnInner">
						  <button id="btn" class="bubbly-button">DOWNLOAD</button>
					
							<script>
								var btn = document.getElementById('btn');
								
								var animateButton = function(e) {
								  e.preventDefault;
								  e.target.classList.remove('animate');
								  
								  e.target.classList.add('animate');
								  setTimeout(function(){
										e.target.classList.remove('animate');
									  },700);
								};
								btn.addEventListener('click', animateButton, false);
							</script>
							</div>
						</div>
				</form>
					
			
				</div>
			 </div>
			 
		</div>
		
		<script>
			$('body').flurry({
			  character:"❄",
			  color:"#4493C1",
			  frequency: 100,
			  speed: 3000,
			  small: 8,
			  large: 28,
			  wind: 40,
			  windVariance: 20,
			  rotation: 90,
			  rotationVariance: 180,
			  startOpacity: 1,
			  endOpacity: 0,
			  opacityEasing:"cubic-bezier(1,.3,.6,.74)",
			  blur:true,
			  overflow:"hidden",
			  zIndex: 9999
			});

		
			$('body').flurry();

		</script>
	</body>
</html>
