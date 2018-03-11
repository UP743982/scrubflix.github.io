<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top20.aspx.cs" Inherits="top20" %>

<!DOCTYPE html>
<html lang="en-GB">
<head runat="server">
	<title>Top20</title>
	<!-- ------------------------------------------------------------- -->
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- ------------------------------------------------------------- -->
	<meta name="description" content="Scrublix is a web application providing information about movies" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="ROBOTS" content="INDEX,FOLLOW" />
	<meta http-equiv="content-language" content="en-gb" />
	<!-- ------------------------------------------------------------- -->

	<!-- Custom Javascript -->

	<!-- SCRIPT TO CHANGE THEME -->
	<script>
		function swapStyleSheet(sheet) {
			document.getElementById('pageStyle').setAttribute('href', sheet);
		}
	</script>
	<!-- SCRIPT TO CHANGE THEME -->

	<!-- Bootstrap -->

	<!-- Custom CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<link rel="icon" href="https://cdn3.iconfinder.com/data/icons/multimedia/100/play_movie_3-512.png" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link id="pageStyle" rel="stylesheet" type="text/css" href="style2.css" />
	<!-- ------------------------------------------------------------- -->
</head>
<body id="background-image">
	<form id="formScrubfixTop20" runat="server">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="Default.aspx" class="navbar-brand">SCRUBFLIX</a>
				</div>
				<div class="collapse navbar-collapse" id="mainNavBar">
					<ul class="nav navbar-nav">
						<li><a href="Default.aspx">Movies</a></li>
						<li class="active"><a href="top20.aspx">Top20</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Change Theme <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li onclick="swapStyleSheet('themes/gold20.css')">Gold</li>
								<li onclick="swapStyleSheet('themes/green20.css')">Green</li>
								<li onclick="swapStyleSheet('style2.css')">Default</li>
							</ul>
						</li>
						<li><a href="genres.html">Genres</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">LogOut</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<br />
		<br />
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="container2">
						<img class="image" src="images/top20/top1.jpg" alt="Shawshank" />
						<a href="movie-detail.aspx?MovieID=14">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">The Shawshank Redemption</p>
									<p style="font-size: 10px">IMDB Rating: 9.3</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top5.jpg" alt="Pulp Fiction" />
						<a href="movie-detail.aspx?MovieID=15">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">Pulp Fiction</p>
									<p style="font-size: 10px">IMDB Rating: 8.9</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top9.jpg" alt="The Good The Bad and The Ugly" />
						<a href="movie-detail.aspx?MovieID=16">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">The Good, the Bad and the Ugly</p>
									<p style="font-size: 10px">IMDB Rating: 8.9</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top13.jpg" alt="Forrest Gump" />
						<a href="movie-detail.aspx?MovieID=17">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">Forrest Gump</p>
									<p style="font-size: 10px">IMDB Rating: 8.8</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top17.jpg" alt="The Lord of The Rings The Two Towers" />
						<a href="movie-detail.aspx?MovieID=18">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">The Lord of the Rings: The Two Towers</p>
									<p style="font-size: 10px">IMDB Rating: 8.7</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="container2">
						<img class="image" src="images/top20/top2.jpg" alt="The God Father" />
						<a href="movie-detail.aspx?MovieID=19">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">The Godfather</p>
									<p style="font-size: 10px">IMDB Rating: 9.2</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top6.jpg" alt="Schindlers List" />
						<a href="movie-detail.aspx?MovieID=20">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">Schindler's List</p>
									<p style="font-size: 10px">IMDB Rating: 8.9</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top10.jpg" alt="The Lord of The Rings The Fellowship of The Ring" />
						<a href="movie-detail.aspx?MovieID=21">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">
										The Lord of the Rings:<br />
										The Fellowship of the Ring
									</p>
									<p style="font-size: 10px">IMDB Rating: 8.8</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top14.jpg" alt="Star Wars Episode V The Empire Strikes Back" />
						<a href="movie-detail.aspx?MovieID=22">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">
										Star Wars: Episode V
                                        <br />
										The Empire Strikes Back
									</p>
									<p style="font-size: 10px">IMDB Rating: 8.8</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top18.jpg" alt="One Flew Over The Cuckoos Nest" />
						<a href="movie-detail.aspx?MovieID=23">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">One Flew Over the Cuckoo's Nest</p>
									<p style="font-size: 10px">IMDB Rating: 8.7</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="container2">
						<img class="image" src="images/top20/top3.jpg" alt="The Dark Knight" />
						<a href="movie-detail.aspx?MovieID=24">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">The Dark Knight</p>
									<p style="font-size: 10px">IMDB Rating: 9.0</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top7.jpg" alt="The Lord of The Rings The Return of The King" />
						<a href="movie-detail.aspx?MovieID=25">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">
										The Lord of the Rings:
                                        <br />
										The Return of the King
									</p>
									<p style="font-size: 10px">IMDB Rating: 8.9</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top11.jpg" alt="Inception" />
						<a href="movie-detail.aspx?MovieID=26">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">Inception</p>
									<p style="font-size: 10px">IMDB Rating: 8.8</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top15.jpg" alt="Good Fellas" />
						<a href="movie-detail.aspx?MovieID=27">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">
										Good Fellas
                                        <br />
										Good Fellas
									</p>
									<p style="font-size: 10px">IMDB Rating: 8.8</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top19.jpg" alt="SevenSamurai" />
						<a href="movie-detail.aspx?MovieID=28">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">Seven Samurai</p>
									<p style="font-size: 10px">IMDB Rating: 8.7</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="container2">
						<img class="image" src="images/top20/top4.jpg" alt="The God Father Part II" />
						<a href="movie-detail.aspx?MovieID=29">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">The Godfather: Part II</p>
									<p style="font-size: 10px">IMDB Rating: 9.0</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top8.jpg" alt="12 Angry Men" />
						<a href="movie-detail.aspx?MovieID=30">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">12 Angry Men</p>
									<p style="font-size: 10px">IMDB Rating: 8.9</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top12.jpg" alt="Fight Club" />
						<a href="movie-detail.aspx?MovieID=31">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">Fight Club</p>
									<p style="font-size: 10px">IMDB Rating: 8.8</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top16.jpg" alt="The Matrix" />
						<a href="movie-detail.aspx?MovieID=32">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">The Matrix</p>
									<p style="font-size: 10px">IMDB Rating: 8.7</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
					<div class="container2">
						<img class="image" src="images/top20/top20.jpg" alt="coco" />
						<a href="movie-detail.aspx?MovieID=33">
							<div class="overlay">
								<div class="text">
									<p style="font-size: 20px">Coco</p>
									<p style="font-size: 10px">IMDB Rating: 8.6</p>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
									<span style="color: yellow" class="fa fa-star"></span>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div>&nbsp;</div>
		<div class="footer">Proudly Coded</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</form>
</body>
</html>
