import Latestnews from '@/components/Latestnews';
import PlainLayout from '@/components/MasterLayout/PlainLayout';
import Popularnews from '@/components/Popularnews';
import Slidernews from '@/components/Slidernews';
import Topnews from '@/components/Topnews';
import React from 'react';

async function getData() {
  let Slider = (await (await fetch(`${process.env.HOST}/api/news/type?type=Slider`,{ cache: 'no-store' })).json())['data']
  let Featured = (await (await fetch(`${process.env.HOST}/api/news/type?type=Featured`, { cache: 'no-store' })).json())['data']
  let Popular = (await (await fetch(`${process.env.HOST}/api/news/type?type=Popular`, { cache: 'no-store' })).json())['data']
  let Latest = (await (await fetch(`${process.env.HOST}/api/news/latest`, { cache: 'no-store' })).json())['data']
  return { Featured: Featured, Popular: Popular, Latest: Latest, Slider:Slider }
}

const page = async () => {
  const data = await getData();
  console.log(data);
  return (
    <PlainLayout>
      <Slidernews slider={data['Slider']} />
      <div className="continar">
        <Topnews featured={data['Featured']} />
      </div>

      <div className="main-news">
        <div className="container-fluid">
          <div className="row">
            <div className="col-md-8">
              <div className="row">
                <div className="col-md-12">
                  <h2><i class="bi bi-chevron-bar-expand"></i>Latest News</h2>

                  <Latestnews latest={data['Latest']} />
                </div>
                <div className="col-md-12">
                  <h2><i class="bi bi-chevron-bar-expand"></i>Popular News</h2>
                  <Popularnews popular={data['Popular']} />
                </div>
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


    </PlainLayout>
  );
};

export default page;