import PlainLayout from '@/components/MasterLayout/PlainLayout';
import Newslist from '@/components/Newslist';
 

async function getData(id) {
    // let Popular = (await (await fetch(`${process.env.HOST}/api/news/type?type=Popular`)).json())['data']
    let News = (await (await fetch(`${process.env.HOST}/api/news/category?catID=${id}`,{ cache: 'no-store' })).json())['data']
    return {News:News}
}



const page = async(props) => {

    let id=props.searchParams['id']
    const data=await getData(id)
    return (
        <>
            <PlainLayout>
             
                <Newslist newslist={data['News']} />
            </PlainLayout>

        </>
    );
};

export default page;