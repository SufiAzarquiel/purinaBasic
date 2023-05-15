<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">
<html lang="en">
    <head>
        <title>Purina</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <link rel="stylesheet" href="style.css"/>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
            crossorigin="anonymous"
        />
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-sm navbar-light bg-danger primer-nivel-nav">
                  <div class="container-sm">
                    <a class="navbar-brand" href="#">
                        <img src="img/logo.png" width="150px" alt="main logo"/>
                    </a>
                    <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#navPrincipal" aria-controls="navPrincipal"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navPrincipal">
                        <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                            <li class="nav-item fw-bold">
                                <a class="nav-link active text-white" href="#" aria-current="page">Offers<span class="visually-hidden">(current)</span></a>
                            </li>
                            <li class="nav-item fw-bold">
                                <a class="nav-link text-white" href="#">News <i class="fa fa-arrow-up" aria-hidden="true"></i></a>
                            </li>
                            <li class="nav-item fw-bold">
                                <a class="nav-link text-white" href="#">Carrers <i class="fa fa-arrow-up" aria-hidden="true"></i></a>
                            </li>
                            <li class="nav-item fw-bold">
                                <a class="nav-link text-white" href="#">Contact Us</a>
                            </li>
                        </ul>
                    </div>
              </div>
            </nav>
            <nav class="navbar navbar-expand-sm navbar-light bg-danger">
                <div class="container-sm">
                  <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#navPrincipal" aria-controls="navPrincipal"
                      aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navPrincipal">
                      <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                          <li class="nav-item fw-bold ms-sm-4">
                              <a class="nav-link text-white" href="#">Dog Products</a>
                          </li>
                          <li class="nav-item fw-bold ms-sm-4">
                              <a class="nav-link text-white" href="#">Cat Products</a>
                          </li>
                          <li class="nav-item fw-bold ms-sm-4">
                              <a class="nav-link text-white" href="#">Where To Buy</a>
                          </li>
                          <li class="nav-item fw-bold ms-sm-4">
                              <a class="nav-link text-white" href="#">Choosing A Pet</a>
                          </li>
                          <li class="nav-item fw-bold ms-sm-4">
                              <a class="nav-link text-white" href="#">Why Purina</a>
                          </li>
                          <li class="nav-item fw-bold ms-sm-4">
                              <a class="nav-link text-white" href="#">Pet Care</a>
                          </li>
                          <li class="nav-item ms-sm-4">
                              <form class="d-flex my-2 my-lg-0">
                                  <input class="form-control bg-dark border-0 me-sm-2" type="text" placeholder="Buscar"/>
                                  <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                              </form>
                          </li>
                      </ul>
                  </div>
                </div>
            </nav>
        </header>
        <main>
            <div class="ms-sufi my-lg-sufi">
                <p class="h1">Cat Breeds</p>
                <p class="h5">Thinking about getting a cat but not sure which breed is right for you? We can help.</p>
            </div>
            <div class="ms-sm-4 row">
                <div class="col-md-3">
                    <p class="h2">BREEDS</p>
                    <p class="h4 mt-sm-5">Filter</p>
                    <p class="h5">SIZE</p>
                    <p class="h5">COAT</p>
                    <p class="h5">ENERGY</p>
                    <p class="h5">SHEDDING</p>
                </div>
				<div class="col-md-9 row">
					<xsl:for-each select="gatos/gato">
						<div class="col-md-4 my-3">
							<div class="card border-0">
								<img class="card-img-top" src="{foto}" alt="Title"/>
								<div class="card-body text-center">
									<h4 class="card-title">
										<xsl:value-of select="nombre"/>
									</h4>
									<p class="card-text"><a href="#">Learn More</a></p>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</div>
            </div>
			<div class="bg-rosa p-5">
                <h2 class="text-center">
                    Find a Cat in Your Area
                </h2>
                <div class="row">
                    <div class="col-md-3">
                        Postal Code
                        <div class="form-group">
                          <label for=""></label>
                          <input type="text" class="form-control" name="" id="" placeholder="63164"/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        Breed
                        <div class="form-group">
                          <label for=""></label>
                          <input type="text" class="form-control" name="" id="" placeholder="Abyssinian Cat"/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        Gender
                        <div class="form-group">
                          <label for=""></label>
                          <select class="form-control" name="" id="">
                            <option selected='true' disabled='true' hidden='true'>any</option>
                            <option>Male</option>
                            <option>Female</option>
                          </select>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <br/>
                        <button type="button" class="btn btn-danger px-5">FIND YOUR PET</button>
                    </div>
                </div>
            </div>
        </main>
        <footer>
            <div class="bg-secondary row p-5">
                <div class="col-md-2">
                    <a href="#">
                        <img src="img/logo.png" width="150px" alt=""/>
                    </a>
                </div>
                <div class="row col-md-7">
                    <div class="col-md-3">
                        <p class="text-white h6">PURINA</p>
                        <ul class="list-unstyled text-white">
                            <li><a href="#" class="text-decoration-none link-light">Dogs</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Cats</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Nutrition</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Ingredients</a></li>
                            <li><a href="#" class="text-decoration-none link-light">About Purina</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Partners &#38; Services</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <p class="text-white h6">OUR PRODUCTS</p>
                        <ul class="list-unstyled text-white">
                            <li><a href="#" class="text-decoration-none link-light">Dry Dog Food</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Wet Dog Food</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Dog Treats</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Wet Cat Food</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Dry Cat Food</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Cat Treats</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Cat Litter</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <p class="text-white h6">BRANDS</p>
                        <ul class="list-unstyled text-white">
                            <li><a href="#" class="text-decoration-none link-light">Dog Brands</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Cat Brands</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <p class="text-white h6">HELPFUL LINKS</p>
                        <ul class="list-unstyled text-white">
                            <li><a href="#" class="text-decoration-none link-light">Offers</a></li>
                            <li><a href="#" class="text-decoration-none link-light">News</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Careers</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Contact Us</a></li>
                            <li><a href="#" class="text-decoration-none link-light">International Sites</a></li>
                            <li><a href="#" class="text-decoration-none link-light">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row justify-content-start">
                        <i class="col-1 ms-2 fa fa-facebook-official fa-2x" aria-hidden="true"></i>
                        <i class="col-1 ms-2 fa fa-twitter-square fa-2x" aria-hidden="true"></i>
                        <i class="col-1 ms-2 fa fa-youtube-square fa-2x" aria-hidden="true"></i>
                        <i class="col-1 ms-2 fa fa-instagram fa-2x" aria-hidden="true"></i>
                    </div>
                    <div class="row mt-4">
                        <form class="d-flex my-2 my-lg-0">
                            <input class="form-control bg-dark border-0 me-sm-2 py-3" type="text" placeholder="Buscar"/>
                            <button class="btn btn-outline-light" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="bg-dark py-3">
                <p class="text-center text-white my-2">
                    All Nestle Purina tracemarks 0-wrtd by Societe des Produits Nestle SA. Vevey. Switzert.ana or are used With permission
                </p>
            </div>
        </footer>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>