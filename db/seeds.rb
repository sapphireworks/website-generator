# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

template = Template.new
template.name = 'template-1'
template.thumbnail_path = 'template-1/thumb.png'
template.save

theme = Theme.new
theme.name = 'light'
theme.templates_id = 1
theme.save

navbar = NavBar.new
navbar.name='nav-bold-ease-scroll'
navbar.html = '<nav class="navbar navbar-custom navbar-fixed-top ">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span><i class="fa fa-bars"></i></span>
      </button>
      <a href="#home" class="navbar-brand page-scroll">Brand</a>
    </div>
    <!--end of nav-header -->
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a class=\'page-scroll\' href="#home">Home</a>
        </li>
        <li><a class=\'page-scroll\' href="#about-section">About</a>
        </li>
        <li><a class=\'page-scroll\' href="#catalogue-section">Catalogue</a>
        </li>
        <li><a class=\'page-scroll\' href="#contact-us-section">Contact us</a>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="#contact-us-section"><i class="fa fa-envelope-o fa-4"></i></a>
        </li>
      </ul>
    </div>
    <!--end of nav-collapse -->
  </div>
  <!--end of container -->
</nav>'

navbar.templates_id = 1
navbar.themes_id = 1
navbar.save

home_section = HomeSection.new
home_section.name = 'normal-big-image'
home_section.html = '
<!-- main cover image -->
<div class="row" id="home">
  <div class="container">
    <%= image_tag "template-1/furn-1.jpg" ,class: "cover-image" %>
  </div>
  <!-- end of container -->
</div>
<!-- end of main cover image-->'

home_section.templates_id = 1
home_section.themes_id = 1
home_section.save

about_section = AboutSection.new
about_section.name = 'normal-about-section'
about_section.html = '<div class="container">
  <div class="text-center row">
    <h2 class=\'section-heading\'>About</h2>
    <div class="section-heading-divider"></div>
    <div class="section-content">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tortor diam, feugiat vel consequat ac, pharetra id ante. Praesent commodo ornare justo, in blandit dui pretium non. Integer vel faucibus ipsum. Pellentesque tempor fringilla
          libero sed interdum. Nam volutpat mauris id diam vehicula consectetur. Morbi congue urna vel nisi rutrum, ut fermentum mauris iaculis. Phasellus leo purus, sollicitudin eu malesuada eget, varius ut mi. Fusce volutpat ipsum eu convallis mattis.
          Aliquam eleifend rhoncus pulvinar. Aliquam posuere pulvinar nibh ac rutrum. Mauris maximus egestas orci, sed mattis ligula ultricies et. Phasellus et fermentum enim.</p>
    </div>
    <!-- end of section-content-->
  </div>
  <!-- end of text-center row -->
</div>
<!-- end of container -->'

about_section.templates_id = 1
about_section.themes_id = 1
about_section.save

catalogue_section = CatalogueSection.new
catalogue_section.html = '<div class="container">
  <div class="row ">
    <h2 class="section-heading">Catalogue</h2>
    <div class="section-heading-divider"></div>
    <div class="section-content">
      <ul class="grid cs-style-3 list-inline">
       <div class="owl-carousel" id="catalogue-items">
        <li>
          <figure>
            <%= image_tag "template-1/furn-1.jpg" , alt: "Cinque Terre" %>
            <figcaption>
              <h3>Cool bedroom</h3>
              <span>800$</span>
              <a href="#catalogue-section">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <%= image_tag "template-1/furn-1.jpg" , alt: "Cinque Terre" %>
            <figcaption>
              <h3>Cooler bedroom</h3>
              <span>1200$</span>
              <a href="#catalogue-section">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <%= image_tag "template-1/furn-1.jpg" , alt: "Cinque Terre" %>
            <figcaption>
              <h3>Coolest bedroom</h3>
              <span>999.99$</span>
              <a href="#catalogue-section">Take a look</a>
            </figcaption>
          </figure>
        </li>
       </div>
      </ul>
    </div>
    <!-- end of section-content -->
  </div>
  <!-- end of row -->
</div>
<!-- end of container -->'

catalogue_section.templates_id = 1
catalogue_section.themes_id = 1
catalogue_section.save

contact_us_section = CatalogueSection.new
contact_us_section.name = 'normal-contact-with-map'
contact_us_section.html = '<div class="container">
  <div class="row">
    <h2 class=\'section-heading\'>Contact us</h2>
    <div class="section-heading-divider"></div>
    <div class="section-content">
      <div class="col col-md-4">
        <div id="info">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tortor diam</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tortor diam</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tortor diam</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tortor diam</p>
        </div>
      </div>
      <div class="col col-md-8">
        <div id="google-map" ></div>
      </div>
    </div>
    <!-- end of section-content -->
  </div>
  <!-- end of row -->
</div>
<!-- end of container -->'

contact_us_section.templates_id = 1
contact_us_section.themes_id = 1
contact_us_section.save

footer = Footer.new
footer.name = 'normal-footer'
footer.html = "  <hr>
  <p class='text-center'>Powered by: Trustious</p>"
footer.templates_id = 1
footer.themes_id = 1
