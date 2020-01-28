 <h3 class="card-title">Cart Totals</h3>
 <table class="cart__totals">
                                        <thead class="cart__totals-header">
                                            <tr>
                                                <th>Subtotal</th>
                                                <td>${{custom_format(Cart::getSubTotal(),2)}}</td>
                                            </tr>
                                        </thead>
                                       <!--  <tbody class="cart__totals-body">
                                            <tr>
                                                <th>Shipping</th>
                                                <td>$25.00
                                                    <div class="cart__calc-shipping"><a href="#">Calculate Shipping</a></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Tax</th>
                                                <td>$0.00</td>
                                            </tr>
                                        </tbody> -->
                                        <tfoot class="cart__totals-footer">
                                            <tr>
                                                <th>Total</th>
                                                <td>${{custom_format(Cart::getTotal(),2)}}</td>
                                            </tr>
                                        </tfoot>
                                    </table>



                                    <a class="cstm-btn solid-btn btn-xl btn-block cart__checkout-button" href="checkout.html">Proceed to checkout</a>