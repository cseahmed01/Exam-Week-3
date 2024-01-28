import React from 'react';

const Newsdetails = (props) => {
    return (
        <>

            <div>
                <div className="breadcrumb-wrap">
                    <div className="container">
                        <ul className="breadcrumb">
                            <li className="breadcrumb-item"><a href="#">Home</a></li>
                            <li className="breadcrumb-item"><a href="#">News</a></li>
                            <li className="breadcrumb-item active">News details</li>
                        </ul>
                    </div>
                </div>
                <div className="single-news">
                    <div className="container">
                        <div className="row">
                            <div className="col-md-8">
                                <div className="sn-img">
                                    <img src={"/image/top-news-1.jpg"} />
                                </div>
                                <div className="sn-content">
                                    <a className="sn-title" href>{props.details['title']}</a>
                                    <a className="sn-date" href><i className="far fa-clock" />{props.details['createdAt']}</a>
                                    <div>{props.details['long_des']}</div>
                                </div>
                            </div>
                            <div className="col-md-4">
                                <div className="sidebar">
                                    <div className="sidebar-widget">
                                        <h2><i className="fas fa-align-justify" />Category</h2>
                                        <div className="category">
                                            <ul className="fa-ul">
                                                <li><span className="fa-li"><i className="far fa-arrow-alt-circle-right" /></span><a href>National</a></li>
                                                <li><span className="fa-li"><i className="far fa-arrow-alt-circle-right" /></span><a href>International</a></li>
                                                <li><span className="fa-li"><i className="far fa-arrow-alt-circle-right" /></span><a href>Economics</a></li>
                                                <li><span className="fa-li"><i className="far fa-arrow-alt-circle-right" /></span><a href>Politics</a></li>
                                                <li><span className="fa-li"><i className="far fa-arrow-alt-circle-right" /></span><a href>Lifestyle</a></li>
                                                <li><span className="fa-li"><i className="far fa-arrow-alt-circle-right" /></span><a href>Technology</a></li>
                                                <li><span className="fa-li"><i className="far fa-arrow-alt-circle-right" /></span><a href>Trades</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div className="sidebar-widget">
                                        <h2><i className="fas fa-align-justify" />Tags</h2>
                                        <div className="tags">
                                            <a href>National</a>
                                            <a href>International</a>
                                            <a href>Economics</a>
                                            <a href>Politics</a>
                                            <a href>Lifestyle</a>
                                            <a href>Technology</a>
                                            <a href>Trades</a>
                                            <a href>National</a>
                                            <a href>International</a>
                                            <a href>Economics</a>
                                            <a href>Politics</a>
                                            <a href>Lifestyle</a>
                                            <a href>Technology</a>
                                            <a href>Trades</a>
                                        </div>
                                    </div>
                                    <div className="sidebar-widget">
                                        <h2><i className="fas fa-align-justify" />Ads 1 column</h2>
                                        <div className="image">
                                            <div className="mn-img">
                                                <img src={"/image/banner-300x250.jpg"} />
                                            </div>
                                        </div>
                                    </div>
                                    <div className="sidebar-widget">
                                        <h2><i className="fas fa-align-justify" />Ads 2 column</h2>
                                        <div className="image">
                                            <div className="row">
                                                <div className="col-sm-6">
                                                    <div className="mn-img">
                                                        <img src={"/image/banner-300x250.jpg"} />
                                                    </div>
                                                </div>
                                                <div className="col-sm-6">
                                                    <div className="mn-img">
                                                        <img src={"/image/banner-300x250.jpg"} />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </>
    );
};

export default Newsdetails;