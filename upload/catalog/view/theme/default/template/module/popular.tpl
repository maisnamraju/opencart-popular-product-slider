<section id="popular">
   <div class="col-lg-12 col-md-12 col-sm-12" id="bestseller">
  <div class="container">
      <div class="row">
        <div class="row" id="popular-head">
           <div class="col-lg-9 col-sm-9 col-md-9 popular-header">
                                    <h4><?php echo $heading_title; ?></h4>
                                    
            </div>
            <div class="col-md-3">
                <div class="controls pull-right hidden-xs btn-group">
                    <a class="left fa fa-chevron-left btn btn-primary" href="#carousel-example-generic" data-slide="prev"></a>
                    <a class="right fa fa-chevron-right btn btn-primary" href="#carousel-example-generic" data-slide="next"></a>
                </div>
            </div> 
       </div>     
             <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
                                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="row">
                         <?php  $len = (count($products))/2;
                                $end = count($products) ;
                                $productActive = array_slice($products, 0, $len);
                                $productHidden = array_splice($products, $len, $end); 
                          foreach ($productActive as $product) { ?>
                            <div class="col-sm-3">
                              <div class="product-container col-item">                    
                                  <div class="image-container">
                                      <?php if ($product['thumb']) { ?>
                                        <a href="<?php echo $product['href']; ?>">    
                                           <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                                        </a>
                                       <?php } ?>                                                        
                                        <a href="#" class="rating">
                                          <?php if ($product['rating']) { ?>  
                                            <img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
                                        </a>
                                        <?php } ?>
                                    </div>
                                    <div class="poduct-desc">
                                        <div class=" col-md-12  item-desc">
                                            <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        </div>
                                        <div class="btn-group">
                                              <?php if ($product['price']) { ?>                                    
                                              <button type="button" class="btn btn-default price"><?php if (!$product['special']) { ?>
                                              <?php echo $product['price']; ?>
                                              <?php } else { ?>
                                              <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                                              <?php }} ?>  
                                              </button>
                                              <button type="button" class="btn btn-default buy" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" /><i class="fa fa-shopping-cart"></i> Add To Cart</button> 
                                        </div>                                                    
                                    </div>
                               </div>     
                            </div>
                            <?php } ?>   
                        </div>
                      </div>
                      <div class="item">
                          <div class="row">
                          <?php  foreach ($productHidden as $product) { ?>
                              <div class="col-sm-3">
                                <div class="product-container col-item">                    
                                    <div class="image-container">
                                        <?php if ($product['thumb']) { ?>
                                          <a href="<?php echo $product['href']; ?>">    
                                             <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                                          </a>
                                         <?php } ?>                                                        
                                          <a href="#" class="rating">
                                            <?php if ($product['rating']) { ?>  
                                              <img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
                                          </a>
                                          <?php } ?>
                                      </div>
                                      <div class="poduct-desc">
                                          <div class=" col-md-12  item-desc">
                                              <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                          </div>
                                          <div class="btn-group">
                                                <?php if ($product['price']) { ?>                                    
                                                <button type="button" class="btn btn-default price"><?php if (!$product['special']) { ?>
                                                <?php echo $product['price']; ?>
                                                <?php } else { ?>
                                                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                                                <?php }} ?>  
                                                </button>
                                             <!--  <button type="button" class="btn btn-default compare">Compare</button> -->
                                             <button type="button" class="btn btn-default buy" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" /><i class="fa fa-shopping-cart"></i> Add To Cart</button> 
                                          </div>                                                    
                                      </div>
                                 </div>     
                              </div>
                              <?php } ?>   
                          </div>
                        </div>    
                  </div> 
                </div> 
     </div>         
  </div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12">
                    <hr/>
                </div>
</section>

<style>

/*Featured Products */

.product-container {
    height: 339px;
    overflow: hidden;
    font-size: 16px;
    margin: 15px 3px 0px 3px;
    position: relative;
    text-align: left;
    padding: 0px 0px 10px;
}
.feature-header h4, .popular-header h4 {
    text-transform: uppercase;
}
.image-container img {
    max-height: 100%;
    max-width: 100%;
    background: none repeat scroll 0 0 #f5f5f5;
    border: 2px solid rgba(172, 172, 172, 0);
    display: block;
    cursor: default;
    margin: 0;
    overflow: hidden;
    padding: 0;
    position: relative;
    text-align: center;
}
.rating {
    position: relative;
    left: 151px;
    top: -40px;
}
.item-desc {
    width: 100%;
    padding: 0;
}
.item-desc a {
    font-size: 18px;
    font-weight: 300;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    clear: both;
    color: #606060;
    display: block;
    font-size: 14px;
    margin-bottom: 0;
    margin-top: 5px;
    padding-left: 5px;
    text-align: left;
    text-transform: uppercase;
    float: left;
}
.price, .compare {
    border-radius: 0px;
}
.price:hover, .compare:hover {
    background: #333333;
    color: #fff;
}
/* ####### POPULAR PRODUCT SLIDER CODE ##################*/

.clear-left {
    clear: left;
}
.controls {
    margin-top: 20px;
}
[data-slide="prev"] {
    margin-right: 10px;
}
#popular-head {
    margin-bottom: 10px;
}
.left, .right {
    padding: 10px 13px;
}
.col-item {
    height: 370px;
}
/* ####################### PRODUCT PAGE ###################*/

#breadcrumb li {
    border-radius: 0px !important;
}
#breadcrumb {
    margin-left: -41px;
    list-style: none;
    display: inline-block;
}
#breadcrumb .icon {
    font-size: 14px;
}
#breadcrumb li {
    float: left;
}
#breadcrumb li a {
    color: #FFF;
    display: block;
    background: #3498db;
    text-decoration: none;
    position: relative;
    height: 40px;
    line-height: 40px;
    padding: 0 10px 0 5px;
    text-align: center;
    margin-right: 23px;
}
#breadcrumb li:nth-child(even) a {
    background-color: #2980b9;
}
#breadcrumb li:nth-child(even) a:before {
    border-color: #2980b9;
    border-left-color: transparent;
}
#breadcrumb li:nth-child(even) a:after {
    border-left-color: #2980b9;
}
#breadcrumb li:first-child a {
    padding-left: 15px;
    background: #E5A139;
}
#breadcrumb li:first-child a:before {
    border: none;
}
#breadcrumb li:last-child a {
    padding-right: 15px;
}
#breadcrumb li:last-child a:after {
    border: none;
}
#breadcrumb li a:before, #breadcrumb li a:after {
    content: "";
    position: absolute;
    top: 0;
    border: 0 solid #3498db;
    border-width: 20px 10px;
    width: 0;
    height: 0;
}
#breadcrumb li a:before {
    left: -20px;
    border-left-color: transparent;
}
#breadcrumb li a:after {
    left: 100%;
    border-color: transparent;
    border-left-color: #E5A139;
}
#breadcrumb li a:hover {
    background-color: #E5A139;
}
#breadcrumb li a:hover:before {
    border-color: #E5A139;
    border-left-color: transparent;
}
#breadcrumb li a:hover:after {
    border-left-color: #E5A139;
}
#breadcrumb li a:active {
    background-color: #E5A139;
}
#breadcrumb li a:active:before {
    border-color: #E5A139;
    border-left-color: transparent;
}
#breadcrumb li a:active:after {
    border-left-color: #E5A139;
}
/*################## Accordion Menu #########################*/

.category-header {
    height: 52px;
    background: rgba(190, 202, 202, 0.54);
    text-align: center;
    padding: 7px 0 2px 0px;
    text-transform: uppercase;
}
.category-header h4 {
    vertical-align: middle;
}
#leftMenu {
    padding-left: 37px;
}
#leftMenu .accordion-group {
    margin-bottom: 0px;
}
#leftMenu .accordion-heading {
    height: 34px;
    list-style-type: none;
}
#leftMenu .accordion-heading a {
    color: rgb(51, 51, 51);
    /* text color */
    text-decoration: none;
    font-weight: bold;
    text-transform: uppercase;
}
#leftMenu .accordion-heading a:hover {
    color: rgb(51, 51, 51);
}
#leftMenu .accordion-heading .active {
    width: 182px;
    height: 34px;
}
#leftMenu {
    background: rgb(243, 243, 243);
    padding-top: 18px;
    padding-bottom: 9px;
}
/*##################FEATURED MENU ###############################*/

.featured-header {
    height: 52px;
    margin-top: 20px;
    background: rgba(190, 202, 202, 0.54);
    text-align: center;
    padding: 7px 0 2px 0px;
    text-transform: uppercase;
}
#featured-menu .item {
    height: 253px;
    margin-top: 10px;
    overflow: hidden;
    border: 1px solid rgba(207, 201, 201, 0.13);
    box-shadow: 0px 0px 1px rgba(129, 104, 104, 0.67);
    margin-bottom: 10px;
}
#featured-menu img {
    width: 100%;
}
#featured-menu .featured-desc {
    float: right;
    position: relative;
    top: -82px;
    width: 222px;
    left: -25px;
    text-transform: uppercase;
    font-size: 12px;
    font-weight: bold;
}

#featured-menu .featured-cost {
    position: relative;
    float: right;
   top: -48px;
    left: 7px;
}


</style>
