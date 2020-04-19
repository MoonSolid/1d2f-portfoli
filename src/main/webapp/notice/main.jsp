<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

  <jsp:include page="/header.jsp"/>

			<!-- PAGE TITLE -->
			<section class="bg-white">
				<div class="container py-1">

					<h1 class="h2">
						고객센터
					</h1>

					<nav aria-label="breadcrumb">
						<ol class="breadcrumb fs--14">
							<li class="breadcrumb-item"><a href="#!">portfoli</a></li>
							<li class="breadcrumb-item active" aria-current="page">고객센터</li>
						</ol>
					</nav>

				</div>
			</section>
			<!-- /PAGE TITLE -->





			<!-- FAQ -->
			<section>
				<div class="container">

					<div class="row">

						<div class="col-12 col-lg-4">
							<div class="sticky-kit">

								<div>

									<!--

										.nav-link class is required else Bootstrap Scrollspy will not work!
										Is limited to : nav component and list group!


										The layout is too round?
										Replace the classes:
											.rounded-xl  	=> 	.rounded
											.rounded-pill 	=> 	.rounded

									-->
									<ul id="list-example" class="p-2 list-unstyled nav-default shadow-md .rounded bg-white mb-5">
										<li class="px-3 py-2">
											<h2 class="h5 font-weight-normal text-primary">
												고객센터
											</h2>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy1">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>공지사항</span>
											</a>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy2">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>자주묻는 질문 (FAQ)</span>
											</a>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy3">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>Q&A</span>
											</a>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy4">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>신고함</span>
											</a>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy5">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>To Tag people in a photo</span>
											</a>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy6">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>Can I add images from my 3rd party keyboard app?</span>
											</a>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy7">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>My Tweets are protected. Can I still tag or be tagged in a photo?</span>
											</a>
										</li>

										<li>
											<a class="nav-link rounded-pill scroll-to py-3" href="#spy8">
												<i class="fs--13 fi fi-arrow-end-slim"></i>
												<span>I donât want to be tagged in photos. How do I change my settings?</span>
											</a>
										</li>

									</ul>

								</div>

							</div>
						</div>
						
						<div class="col-12 col-lg-8">

							<!--
								.article-format class will add some slightly formattings for a good text visuals. 
								This is because most editors are not ready formatted for bootstrap
								Blog content should come inside this container, as it is from database!
								src/scss/_core/base/_typography.scss
							-->
							<div class="bg-white p-5 p-4-xs rounded-xl article-format">
                <table border='1'>
                <tr>
                <td>
								제목
								</td>
								<td style='width:70%'>
								내용
								</td>
								<td>
                                    조회수
                </td>
								
                </tr>
                </table>

							</div>

						</div>

					</div>

				</div>
			</section>
			<!-- /FAQ -->



		  <jsp:include page="/footer.jsp"/>
