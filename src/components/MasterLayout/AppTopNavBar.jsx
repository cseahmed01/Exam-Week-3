
"use client"
import UserDropDown from "./UserDropDown";
import Link from "next/link";
import {useEffect, useState} from "react";
import Cookies from "js-cookie";
const AppTopNavBar = (props) => {
    let [searchKey,SetSearchKey]=useState("0");
    let [login,SetLogin]=useState(false);

    useEffect(() => {
        if(Cookies.get('token')){
            SetLogin(true);
        }
        else {
            SetLogin(false);
        }
    }, []);
    return (
        <>''
            <div className="top-header" style={{ backgroundColor: '#f4cf3a' }}>
                <div className="container">
                    <div className="row align-items-center">
                        <div className="col-lg-3 col-md-4">
                            <div className="logo">
                                <Link href="/">
                                    <img className="nav-logo" src={"/image/enewslogo.png"} alt="img" />
                                </Link>
                            </div>
                        </div>
                        <div className="col-lg-6 col-md-4">
                            <div className="search">
                                <input onChange={(e)=>{SetSearchKey(e.target.value)}} type="text" placeholder="Search" />
                                <Link href={`/search?keyword=${searchKey}`}><button><i class="bi bi-search"></i></button></Link>
                            </div>
                        </div>
                        <div className="col-lg-3 col-md-4">
                            <div className="social">
                                <a target="_blank" className="mx-1" href={props.data['socials'][0]['twitter']}><i class="bi bi-twitter-x"></i></a>
                                <a target="_blank" className="mx-1" href={props.data['socials'][0]['facebook']}><i class="bi bi-facebook"></i></a>
                                <a target="_blank" className="mx-1" href={props.data['socials'][0]['linkedin']}><i class="bi bi-linkedin"></i></a>
                                <a target="_blank" className="mx-1" href={props.data['socials'][0]['youtube']}><i class="bi bi-youtube"></i></a>
                                
                            </div>
 
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default AppTopNavBar;