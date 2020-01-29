 <div class="card cart-total-card">
                                <div class="card-body">
                                    <h3 class="card-title">Cart Totals</h3>
                                    <table class="cart__totals">
                                        <thead class="cart__totals-header">
                                            <tr>
                                                <th>Subtotal</th>
                                                <td>${{custom_format(Auth::user()->ShopProductCartItems->sum('total'),2)}}</td>
                                            </tr>
                                        </thead>
                                        <tbody class="cart__totals-body">
                                            <!-- <tr>
                                                <th>Shipping</th>
                                                <td>$25.00
                                                    <div class="cart__calc-shipping"><a href="#">Calculate Shipping</a></div>
                                                </td>
                                            </tr> -->

                                       <?php  
                                           
                                          $total = (Auth::user()->ShopProductCartItems->sum('total') + getTaxPriceAccordingToZipcode());

                                       ?>

                                         @if(getTaxPriceAccordingToZipcode() > 0)    
                                            <tr>
                                                <th>Tax</th>
                                                <td>${{custom_format(getTaxPriceAccordingToZipcode(),2)}}</td>
                                            </tr>

                                        @endif
                                        </tbody>
                                        <tfoot class="cart__totals-footer">
                                            <tr>
                                                <th>Total</th>
                                                <td>${{custom_format($total,2)}}</td>
                                            </tr>
                                        </tfoot>
                                    </table><!-- <a class="cstm-btn solid-btn btn-xl btn-block cart__checkout-button" href="checkout.html">Proceed to checkout</a> --></div>
                            </div>