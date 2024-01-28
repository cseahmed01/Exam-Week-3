"use client"
import Carousel from 'react-bootstrap/Carousel';
import { useState } from 'react';
import Link from 'next/link';

const Slidernews = (props) => {

    const [index, setIndex] = useState(0);
    const handleSelect = (selectedIndex) => {
        setIndex(selectedIndex);
    };
    return (
        <>
            <div className="container-fluid">
                <div className="row">
                    <div className="col-md-8">
                        <Carousel id="carouselHero" activeIndex={index} onSelect={handleSelect} controls={false}>
                            {
                                props.slider.map((item, i) => {
                                    return (
                                        <Carousel.Item key={i}>
                                            <Link href={"/news-details?id=" + item['id']}>
                                                <img alt="" style={{ height: '500px' }} className="w-100 " src={"/image/popular-news.jpg"} />
                                                <Carousel.Caption className="caption" >
                                                    <h4 style={{ color: 'white', fontWeight: 'bold' }}>{item['title']}</h4>
                                                    <p style={{ color: 'white', fontWeight: 'bold' }}>{item['short_des']}</p>
                                                </Carousel.Caption>
                                            </Link>
                                        </Carousel.Item>
                                    )
                                })
                            }
                        </Carousel>
                    </div>
                    <div className="col-md-4">
                        <div className="mn-img">
                            <img src={"/image/banner-300x250.jpg"} />
                        </div>
                        <div className="mn-img">
                            <img src={"/image/banner-300x250.jpg"} />
                        </div>
                    </div>
                </div>
            </div>

        </>
    );
};

export default Slidernews;