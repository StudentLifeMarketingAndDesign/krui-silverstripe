<header class="header" role="banner">
	<div class="row collapse">
		<div class="large-4 columns">
			<div class="logo-quicklinks">
				<% include HeaderLogo %>
				<% include NavMobile %>
				<% if HomePageQuicklinks %>
					<ul class="home-quicklinks">
						<% loop HomePageQuicklinks %>
							<% if $AssociatedPage %>
								<li>
									<a href="$AssociatedPage.Link">
										<h4 class="quicklinks-title">$Title <span>$SubTitle</span></h4>
									</a>
								</li>
							<% else_if $ExternalLink %>
								<li>
									<a href="$ExternalLink">
										<h4 class="quicklinks-title">$Title <span>$SubTitle</span></h4>
									</a>
								</li>
							<% else %>
								<li>
									<h4 class="quicklinks-title">$Title <span>$SubTitle</span></h4>
								</li>
							<% end_if %>
						<% end_loop %>
					</ul>
				<% end_if %>
			</div>
		</div>
			<div class="large-8 columns">
				<% include Nav %>
				<div class="slider <% if $CarouselImages.Count < 2 %>single<% end_if %>">
					<ul class="home-orbit" data-orbit data-options="
						animation:slide;
						animation_speed:1000;
						pause_on_hover:true;
						resume_on_mouseout: true;
						navigation_arrows:true;
						bullets:false;
						timer_speed: 5000;">
						<% loop CarouselImages.Limit(3) %>
							<li>
								<% if $YouTubeEmbed %>
									$YouTubeEmbed
								<% else %>
									<a href="$AssociatedPage.Link">
										<img src="$Image.Fill(644,390).URL" alt="$Title">
									</a>
								<% end_if %>
								<div class="orbit-caption">
									<% if $AssociatedPage %>
										<a href="$AssociatedPage.Link">$Title</a>
									<% else %>
										$Title
									<% end_if %>
								</div>
							</li>
						<% end_loop %>
					</ul>
			</div>

				<div class="slider <% if $getBlogs.Count < 2 %>single<% end_if %>">
					<ul class="home-orbit" data-orbit data-options="
						animation:slide;
						animation_speed:1000;
						pause_on_hover:true;
						resume_on_mouseout: true;
						navigation_arrows:true;
						bullets:false;
						timer_speed: 5000;">
						
							<% loop getBlogs.Limit(3) %>
								<li>
									<% if $YouTubeEmbed %>
										$YouTubeEmbed
									<% else %>
										<a href="$Link">
											<img src="$FeaturedImage.Fill(644,390).URL" alt="$Title">
										</a>
									<% end_if %>
									<div class="orbit-caption">
										<a href="$Link">$Title</a>
									</div>
								</li>
							<% end_loop %>
						
					</ul>
				</div>
		</div>
	</div>
</header>