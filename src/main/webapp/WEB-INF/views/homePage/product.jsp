<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% String pj = "../resources/"; %>

<!DOCTYPE html>
<html>

<body>
	<!-- 여기에 헤드 -->
	<%@ include file="../include/homeInclude/head.jsp" %> 
	<!-- 여기에 헤더 -->	
	<%@ include file="../include/homeInclude/header.jsp" %>
	<!-- 여기에 top -->
	<%@ include file="../include/homeInclude/top.jsp" %>
		
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li><a href="#">All Categories</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Headphones</a></li>
							<li class="active">클릭한제품의이름</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-2">
						<!-- <div id="product-main-img" class="slick-initialized slick-slider"><button class="slick-prev slick-arrow" aria-label="Previous" type="button" style="display: block;">Previous</button>
							<div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 2880px;"><div class="product-preview slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="0" style="width: 720px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1; overflow: hidden;">
								
							<img width="300" role="presentation" src="../resources/img/product01.png" class="zoomImg" style="position: absolute; top: 20.1px; left: 118.8px; opacity: 0; width: 600px; height: 600px; border: none; max-width: none; max-height: none;"></div><div class="product-preview slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" style="width: 720px; position: relative; left: -720px; top: 0px; z-index: 998; opacity: 0; overflow: hidden;">
								<img src="../resources/img/product03.png" alt="">
							<img role="presentation" src="../resources/img/product03.png" class="zoomImg" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 600px; height: 600px; border: none; max-width: none; max-height: none;"></div>
							</div>
							</div>

						<button class="slick-next slick-arrow" aria-label="Next" type="button" style="display: block;">Next</button></div> -->
						<img width="400" src="../resources/upload/${board.board_RealMainImg} " alt="">
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs" class="slick-initialized slick-slider slick-dotted">
							

							

							

							
						<div class="slick-list draggable" style="padding: 0px;"><div class="slick-track" style="opacity: 1; width: 2880px; transform: translate3d(-720px, 0px, 0px);"><div class="product-preview slick-slide slick-cloned" tabindex="-1" style="width: 230px;" data-slick-index="-4" aria-hidden="true">
								<img src="../resources/img/product01.png" alt="">
							</div><div class="product-preview slick-slide slick-cloned" tabindex="-1" style="width: 230px;" data-slick-index="-3" aria-hidden="true">
								<img src="../resources/img/product03.png" alt="">
							</div><div class="product-preview slick-slide slick-cloned" tabindex="-1" style="width: 230px;" data-slick-index="-2" aria-hidden="true">
								<img src="../resources/img/product06.png" alt="">
							</div><div class="product-preview slick-slide slick-cloned slick-active" tabindex="-1" style="width: 230px;" data-slick-index="-1" aria-hidden="false">
								<img src="../resources/img/product08.png" alt="">
							</div><div class="product-preview slick-slide slick-current slick-active slick-center" tabindex="0" style="width: 230px;" data-slick-index="0" aria-hidden="false" role="tabpanel" id="slick-slide10" aria-describedby="slick-slide-control10">
								<img src="../resources/img/product01.png" alt="">
							</div><div class="product-preview slick-slide slick-active" tabindex="0" style="width: 230px;" data-slick-index="1" aria-hidden="false" role="tabpanel" id="slick-slide11" aria-describedby="slick-slide-control11">
								<img src="../resources/img/product03.png" alt="">
							</div><div class="product-preview slick-slide" tabindex="0" style="width: 230px;" data-slick-index="2" aria-hidden="true" role="tabpanel" id="slick-slide12" aria-describedby="slick-slide-control12">
								<img src="../resources/img/product06.png" alt="">
							</div><div class="product-preview slick-slide" tabindex="-1" style="width: 230px;" data-slick-index="3" aria-hidden="true" role="tabpanel" id="slick-slide13" aria-describedby="slick-slide-control13">
								<img src="../resources/img/product08.png" alt="">
							</div><div class="product-preview slick-slide slick-cloned slick-center" tabindex="-1" style="width: 230px;" data-slick-index="4" aria-hidden="true">
								<img src="../resources/img/product01.png" alt="">
							</div><div class="product-preview slick-slide slick-cloned" tabindex="-1" style="width: 230px;" data-slick-index="5" aria-hidden="true">
								<img src="../resources/img/product03.png" alt="">
							</div><div class="product-preview slick-slide slick-cloned" tabindex="-1" style="width: 230px;" data-slick-index="6" aria-hidden="true">
								<img src="../resources/img/product06.png" alt="">
							</div><div class="product-preview slick-slide slick-cloned" tabindex="-1" style="width: 230px;" data-slick-index="7" aria-hidden="true">
								<img src="../resources/img/product08.png" alt="">
							</div></div></div><ul class="slick-dots" style="display: block;" role="tablist"><li class="slick-active" role="presentation"><button type="button" role="tab" id="slick-slide-control10" aria-controls="slick-slide10" aria-label="1 of 2" tabindex="0" aria-selected="true">1</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control11" aria-controls="slick-slide11" aria-label="2 of 2" tabindex="-1">2</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control12" aria-controls="slick-slide12" aria-label="3 of 2" tabindex="-1">3</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control13" aria-controls="slick-slide13" aria-label="4 of 2" tabindex="-1">4</button></li></ul></div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">클릭한 제품의 이름</h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#">10 리뷰(s) | 리뷰작성</a>
							</div>
							<div>
								<h3 class="product-price">1,000,000 원 <del class="product-old-price">1,000,000 원</del></h3>
								<span class="product-available">In Stock</span>
							</div>
							<p>클릭한 제품의 상세정보 ::: 제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.</p>

							<div class="product-options">
								<label>
									Size
									<select class="input-select">
										<option value="0">X</option>
									</select>
								</label>
								<label>
									Color
									<select class="input-select">
										<option value="0">Red</option>
									</select>
								</label>
							</div>

							<div class="add-to-cart">
								<div class="qty-label">
									Qty
									<div class="input-number">
										<input type="number">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> 장바구니 추가</button>
							</div>
						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">요약</a></li>
								<li><a data-toggle="tab" href="#tab2">상세정보</a></li>
								<li><a data-toggle="tab" href="#tab3">리뷰 (3)</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<p>요약정보 ::: 제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.</p>
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<p>상세정보 ::: 제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.제품설명이 들어갑니다.</p>
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">작성자명1John</h5>
															<p class="date">날짜시분초27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>리뷰내용 ::: 리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">작성자명들어감2John</h5>
															<p class="date">날짜시분초들어감27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>리뷰내용2 ::: 리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">작성자명3John</h5>
															<p class="date">날짜시분초27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>리뷰내용 ::: 리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.</p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
												<form class="review-form">
													<input class="input" type="text" placeholder="Your Name">
													<input class="input" type="email" placeholder="Your Email">
													<textarea class="input" placeholder="Your Review"></textarea>
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn">Submit</button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- Section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">Related Products</h3>
						</div>
					</div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="../resources/img/product01.png" alt="">
								<div class="product-label">
									<span class="sale">-30%</span>
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">Category</p>
								<h3 class="product-name"><a href="#">제품이름</a></h3>
								<h4 class="product-price">1,000,000 원 <del class="product-old-price">1,000,000 원</del></h4>
								<div class="product-rating">
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="../resources/img/product02.png" alt="">
								<div class="product-label">
									<span class="new">NEW</span>
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">Category</p>
								<h3 class="product-name"><a href="#">제품이름</a></h3>
								<h4 class="product-price">1,000,000 원 <del class="product-old-price">1,000,000 원</del></h4>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<div class="clearfix visible-sm visible-xs"></div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="../resources/img/product03.png" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Category</p>
								<h3 class="product-name"><a href="#">제품이름</a></h3>
								<h4 class="product-price">1,000,000 원 <del class="product-old-price">1,000,000 원</del></h4>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="../resources/img/product04.png" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Category</p>
								<h3 class="product-name"><a href="#">제품이름</a></h3>
								<h4 class="product-price">1,000,000 원 <del class="product-old-price">1,000,000 원</del></h4>
								<div class="product-rating">
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
							</div>
						</div>
					</div>
					<!-- /product -->

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /Section -->
			
	<!-- 여기에 푸터 -->
	<%@ include file="../include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="../include/homeInclude/js.jsp" %>
</body>
</html>