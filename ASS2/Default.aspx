<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASS2_Default"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .master_page_contents {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" ForeColor="#3399FF"> 
      <PathSeparatorTemplate>  
         -->  
       </PathSeparatorTemplate> 
    </asp:SiteMapPath>   

    <div id="homeMain">
            <div id="content_page_title">Welcome</div>  
        <div class="cleaner_h5"></div>     
            <div class="img-slider">
                <!----start-slider-script---->
                <script src="js/responsiveslides.min.js"></script>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider4").responsiveSlides({
                            auto: true,
                            pager: true,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
					  </script>
                <!----//End-slider-script---->
                <!-- Slideshow 4 -->
                <div id="top" class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <img src="images/slide.jpg" class="img-responsive" alt=""/>
                            <div class="slider-caption">
                                <div class="slider-caption-left text-center">
                                    <h1>ARE YOU LOOKING FOR SWEET, STYLISH AND DELECIOUS BIRTHDAY CAKES?</h1>
                                    <p>DON'T WORRY, WE CAN HELP YOU! CHECK OUR BEST CAKE SECTION.</p>
                                    <a class="buy-btn" href="#">Buy Now</a>
                                </div>
                                <div class="slider-caption-right">
                                    <a href="#">
                                        <img src="images/iteam.png" class="img-responsive" title="name" /></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                            <div class="share-on">
                                <div class="share-on-grid">
                                    <div class="share-on-grid-left">
                                        <h3>Share On</h3>
                                    </div>
                                    <div class="share-on-grid-right">
                                        <a href="#"><span class="facebook"></span></a>
                                        <a href="#"><span class="twitter"></span></a>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                        </li>
                        <li>
                            <img src="images/slide.jpg" class="img-responsive" alt="">
                            <div class="slider-caption">
                                <div class="slider-caption-left text-center">
                                    <h1>ARE YOU LOOKING FOR SWEET, STYLISH AND DELECIOUS BIRTHDAY CAKES?</h1>
                                    <p>DON'T WORRY, WE CAN HELP YOU! CHECK OUR BEST CAKE SECTION.</p>
                                    <a class="buy-btn" href="#">Buy Now</a>
                                </div>
                                <div class="slider-caption-right">
                                    <a href="#">
                                        <img src="images/bluecake.jpg" class="img-responsive" title="name" /></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                            <div class="share-on">
                                <div class="share-on-grid">
                                    <div class="share-on-grid-left">
                                        <h3>Share On</h3>
                                    </div>
                                    <div class="share-on-grid-right">
                                        <a href="#"><span class="facebook"></span></a>
                                        <a href="#"><span class="twitter"></span></a>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                        </li>
                        <li>
                            <img src="images/slide.jpg" class="img-responsive" alt="">
                            <div class="slider-caption">
                                <div class="slider-caption-left text-center">
                                    <h1>ARE YOU LOOKING FOR SWEET, STYLISH AND DELECIOUS BIRTHDAY CAKES?</h1>
                                    <p>DON'T WORRY, WE CAN HELP YOU! CHECK OUR BEST CAKE SECTION.</p>
                                    <a class="buy-btn" href="#">Buy Now</a>
                                </div>
                                <div class="slider-caption-right">
                                    <a href="#">
                                        <img src="images/pinkcake.jpg" class="img-responsive" title="name" /></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                            <div class="share-on">
                                <div class="share-on-grid">
                                    <div class="share-on-grid-left">
                                        <h3>Share On</h3>
                                    </div>
                                    <div class="share-on-grid-right">
                                        <a href="#"><span class="facebook"></span></a>
                                        <a href="#"><span class="twitter"></span></a>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                        </li>
                        <li>
                            <img src="images/slide.jpg" class="img-responsive" alt="">
                            <div class="slider-caption">
                                <div class="slider-caption-left text-center">
                                    <h1>ARE YOU LOOKING FOR SWEET, STYLISH AND DELECIOUS BIRTHDAY CAKES?</h1>
                                    <p>DON'T WORRY, WE CAN HELP YOU! CHECK OUR BEST CAKE SECTION.</p>
                                    <a class="buy-btn" href="#">Buy Now</a>
                                </div>
                                <div class="slider-caption-right">
                                    <a href="#">
                                        <img src="images/rosecake.jpg" class="img-responsive" title="name" /></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                            <div class="share-on">
                                <div class="share-on-grid">
                                    <div class="share-on-grid-left">
                                        <h3>Share On</h3>
                                    </div>
                                    <div class="share-on-grid-right">
                                        <a href="#"><span class="facebook"></span></a>
                                        <a href="#"><span class="twitter"></span></a>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!-- share-on -->
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        <div class="cleaner_h5"></div>
            <div id="master_page_contents">This Cake workshop would provide you with great diversity of products and fruits as you top consideration. So you would see a list of items presented here for you to choose.
                                    I would be very good if you give us some recommentations so that we could improve much better than 
            </div>
        <asp:Label ID="Label3" runat="server" Text="Introduction: This is good platform for you to select listed items." 
            ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
          <div class="cleaner_h10"></div> 
        <div class="homeFooter">
            <div class="hf">
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm" ForeColor="#3399FF">Monash Disclaimer</asp:LinkButton><br/>
                <asp:Label ID="Label1" runat="server" Text="Email:" ForeColor="#CCFFFF"></asp:Label><a href="mailto:jyu103@student.monash.edu">author</a><br/>
                <asp:Label ID="Label2" runat="server" Text="Email:" ForeColor="#CCFFFF"></asp:Label><a href="mailto:jyu103@student.monash.edu">Webmaster</a><br/>
            </div>
            <div class="codeLink">
                <div style="float: left; height: 30px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/ADROTATOR.png" NavigateUrl="~/ASS2/DisplayAdRotatorCodes.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
                <div style="float: right; height: 30px;">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/ASS2/IMG/masterpage.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=MasterPage.master" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
            </div>
        </div>  
          </div>  
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

