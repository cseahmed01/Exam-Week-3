import Link from "next/link";

const Latestnews = (props) => {
    return (
        <>
            <div className="row">


                {
                    props.latest.map((item, i) => {
                        // Check if it's the first item
                        if (i === 0) {
                            return (
                                <div className="col-lg-6">
                                         <Link  href={"/news-details?id="+item['id']}>
                                    <div className="mn-img">
                                        <img src={"/image/popular-news.jpg"} />
                                    </div>
                                    <div className="mn-content">
                                        <a className="mn-title" href>{item['title']}</a>
                                        <a className="mn-date" href><i class="bi-alarm"></i> {item['createdAt']}</a>
                                        <p>
                                            {item['short_des']}
                                        </p>
                                    </div>
                                    </Link>
                                </div>

                            );
                        }

                        // If it's not the first item, return null or an empty fragment
                        return null;
                    })
                }

                <div className="col-lg-6">


                    {
                        props.latest.map((item, i) => {

                            if (i === 0) {
                                return null;
                            }
                            return (
                                <div className="mn-list">
                                    <Link  href={"/news-details?id="+item['id']}>
                                    <div className="mn-img">
                                        <img src={"/image/popular-news.jpg"} />
                                    </div>
                                    <div className="mn-content">
                                        <a className="mn-title" href>{item['title']}</a>
                                        <a className="mn-date" href><i class="bi-alarm"></i>{item['createdAt']}</a>
                                    </div>
                                    </Link>
                                </div>

                            )
                        })
                    }

                </div>
            </div>
        </>
    );
};

export default Latestnews;