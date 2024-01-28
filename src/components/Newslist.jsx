"use client"
import Link from "next/link";

const Newslist = (props) => {
    return (
        <>
            <div className="top-news">
                <div className="container-fluid">
                    <div className="row">
                        {
                            props.newslist.map((item, i) => {
                                // Check if it's the first item
                                if (i === 0) {
                                    return (
                                        <div className="col-md-6 tn-left" key={i}>
                                            <Link href={"/news-details?id=" + item['id']}>
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
                                    props.newslist.map((item, i) => {
                                        if (i === 0) {
                                            return null;
                                        }

                                        if (i === 1 || i === 2 | i === 3 || i === 4) {


                                            return (
                                                <div className="col-md-6 col-sm-6 col-6" key={i}>
                                                    <Link href={"/news-details?id=" + item['id']}>
                                                        <div className="tn-img">
                                                            <img src={"/image/top-news-1.jpg"} />
                                                            <div className="tn-content">
                                                                <div className="tn-content-inner">
                                                                    <a className="tn-date" href>
                                                                        <i class="bi-alarm"></i>{item['createdAt']}</a>
                                                                    <a className="tn-title" href>{item['title']}</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Link>
                                                </div>
                                            )
                                        }

                                    })
                                }
                            </div>
                        </div>

                        {
                            props.newslist.map((item, i) => {

                                if (i === 0 || i === 1 || i === 2 | i === 3 || i === 4) {
                                    return null;
                                }
                                return (

                                    <div className="col-md-3 col-sm-6 col-6" key={i}>
                                        <Link href={"/news-details?id=" + item['id']}>
                                            <div className="tn-img">
                                                <img src={"/image/top-news-1.jpg"} />
                                                <div className="tn-content">
                                                    <div className="tn-content-inner">
                                                        <a className="tn-date" href>
                                                            <i class="bi-alarm"></i>{item['createdAt']}</a>
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

        </>
    );
};

export default Newslist;