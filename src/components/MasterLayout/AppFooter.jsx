"use client"
const AppFooter = () => {
    return (
        <>

            <div>
                <div className="footer">
                    <div className="container-fluid">
                        <div className="row">
                            <div className="col-lg-3 col-md-6">
                                <div className="footer-widget">
                                    <h3 className="title">Useful Links</h3>
                                    <ul>
                                        <li><a href="#">Pellentesque</a></li>
                                        <li><a href="#">Aliquam</a></li>
                                        <li><a href="#">Fusce placerat</a></li>
                                        <li><a href="#">Nulla hendrerit</a></li>
                                        <li><a href="#">Maecenas</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div className="col-lg-3 col-md-6">
                                <div className="footer-widget">
                                    <h3 className="title">Quick Links</h3>
                                    <ul>
                                        <li><a href="#">Posuere egestas</a></li>
                                        <li><a href="#">Sollicitudin</a></li>
                                        <li><a href="#">Luctus non</a></li>
                                        <li><a href="#">Duis tincidunt</a></li>
                                        <li><a href="#">Elementum</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div className="col-lg-3 col-md-6">
                                <div className="footer-widget">
                                    <h3 className="title">Get in Touch</h3>
                                    <div className="contact-info">
                                        <p><i className="fa fa-map-marker" />44,Chayabithi Estern Housing,Middel Basboo.Dhaka</p>
                                        <p><i className="fa fa-envelope" />cseahmed01@gmail.com</p>
                                        <p><i className="fa fa-phone" />+088-017-95825188</p>
                                        <div className="social">
                                            <a href><i class="bi bi-twitter-x"></i></a>
                                            <a href><i class="bi bi-facebook"></i></a>
                                            <a href><i class="bi bi-linkedin"></i></a>
                                            <a href><i class="bi bi-youtube"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="col-lg-3 col-md-6">
                                <div className="footer-widget">
                                    <h3 className="title">Subscribe</h3>
                                    <div className="newsletter">
                                        <p>
                                        A subscription is an amount of money that you pay regularly to receive a service or magazine, or to belong to or support an organization.
                                        </p>
                                        <form>
                                            <input className="form-control" type="email" placeholder="Your email here" />
                                            <button className="btn">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="footer-bottom">
                    <div className="container">
                        <div className="row">
                            <div className="col-md-6 copyright">
                                <p>Copyright © <a href="https://htmlcodex.com">E-NEWS</a>. All Rights Reserved</p>
                            </div>
                            <div className="col-md-6 template-by">
                                <p>Template By <a href="https://htmlcodex.com">MD NASIM AHAMED</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </>
    );
};

export default AppFooter;