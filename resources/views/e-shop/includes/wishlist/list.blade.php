
@if(Auth::check())


@foreach(Auth::user()->myShopWishList as $item)
<tr class="wishlist__row">
            <td class="wishlist__column wishlist__column--image">
                <a href=""><img src="images/banner-product-img.png" alt=""></a>
            </td>
            <td class="wishlist__column wishlist__column--product"><a href="" class="wishlist__product-name">Electric Planer Brandix KL370090G 300 Watts</a>
                <div class="wishlist__product-rating">
                    <div class="rating">
                        <div class="rating__body">
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                             <i class="fa fa-star"></i>
                        </div>
                    </div>
                    <div class="wishlist__product-rating-legend">9 Reviews</div>
                </div>
            </td>
            <td class="wishlist__column wishlist__column--stock">
                <div class="stock-badge badge-success">In Stock</div>
            </td>
            <td class="wishlist__column wishlist__column--price">$699.00</td>
            <td class="wishlist__column wishlist__column--tocart">
                <button type="button" class="cstm-btn solid-btn btn-sm">Add To Cart</button>
            </td>
            <td class="wishlist__column wishlist__column--remove">
                <button type="button" class="btn btn-light btn-sm btn-svg-icon">
                                       <i class="fas fa-trash-alt"></i>
                                    </button>
            </td>
</tr>

@endforeach

@endif