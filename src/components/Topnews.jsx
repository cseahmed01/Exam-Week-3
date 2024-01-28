"use client"
import Link from "next/link";
const Topnews = (props) => {
    return (
        <div>
            <div className="top-news">
            
                <div className="container-fluid">
                <h2><i className="bi bi-chevron-bar-expand"></i>Top News</h2>
                    <div className="row">
                   
                        {
                            props.featured.map((item, i) => {
                                // Check if it's the first item
                                if (i === 0) {
                                    return (
                                        <div className="col-md-6 tn-left" key={i}>
                                            <Link  href={"/news-details?id="+item['id']}>
                                            <div className="tn-img">
                                                <img src={"/image/top-news-1.jpg"} />
                                                <div className="tn-content">
                                                    <div className="tn-content-inner">
                                                        <a className="tn-date" href><i class="bi-alarm"></i>{item['createdAt']}</a>
                                                        <a className="tn-title" href>{item['title']}</a>
                                                    </div>
                                                </div>
                                            </div>
                                            </Link>
                                        </div>
                                    );
                                }

                                // If it's not the first item, return null or an empty fragment
                                return null;
                            })
                        }

                        <div className="col-md-6 tn-right">
                            <div className="row">


                                {
                                    props.featured.map((item, i) => {

                                        if (i === 0) {
                                            return null;
                                        }
                                        return (
                                            <div className="col-md-6 col-sm-6 col-6" key={i}>
                                                <Link  href={"/news-details?id="+item['id']}>
                                                <div className="tn-img">
                                                    <img src={"/image/top-news-1.jpg"} />
                                                    <div className="tn-content">
                                                        <div className="tn-content-inner">
                                                            <a className="tn-date" href>
                                                            <i className="bi-alarm"></i>{item['createdAt']}</a>
                                                            <a className="tn-title" href>{item['title']}</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                </Link>
                                            </div>
                                        )

                                    })
                                }
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    );
};

export default Topnews;