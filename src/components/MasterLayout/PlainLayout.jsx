import React, { Fragment } from 'react';
import AppFooter from './AppFooter';
import AppNavBar from './AppNavBar'
import AppTopNavBar from './AppTopNavBar';

async function getData() {
    let socials= (await (await fetch(`${process.env.HOST}/api/social`,{ cache: 'no-store' })).json())['data']
    let categories=(await (await fetch(`${process.env.HOST}/api/category`)).json())['data']
    return {socials:socials,categories:categories}
}

const PlainLayout = async (props) => {
    const data = await getData();
    console.log(data)
    return (
        <Fragment>
            <AppTopNavBar data={data}/>
            <AppNavBar data={data} />
            {props.children}
            <AppFooter />
        </Fragment>
    );
};

export default PlainLayout;