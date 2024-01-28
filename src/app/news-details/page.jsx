import CommentForm from '@/components/Comment-Form';
import PlainLayout from '@/components/MasterLayout/PlainLayout';
import Newsdetails from '@/components/Newsdetails';
import React, { Fragment } from 'react';
async function getData(id) {
    let Details = (await (await fetch(`${process.env.HOST}/api/news/details?id=${id}`)).json())['data']
    // let Popular = (await (await fetch(`${process.env.HOST}/api/news/type?type=Popular`)).json())['data']
    // let Comments = (await (await fetch(`${process.env.HOST}/api/comments/news/?postID=${id}`, { cache: 'no-store' })).json())['data']
    return {Details:Details}
}
const page = async(props) => {

    let id=props.searchParams['id']
    let data= await getData(id)
    return (
        <PlainLayout>
            <Fragment>
                <Newsdetails details={data['Details']}/>
                <CommentForm/>
            </Fragment>
        </PlainLayout>

    );
};

export default page;