import PlainLayout from "@/components/MasterLayout/PlainLayout"
import Newslist from "@/components/Newslist"




async function getData(keyword) {
    // let Popular = (await (await fetch(`${process.env.HOST}/api/news/type?type=Popular`)).json())['data']
    let News = (await (await fetch(`${process.env.HOST}/api/news/search?keyword=${keyword}`,{ cache: 'no-store' })).json())['data']
    return { News: News}
}

const Page = async (props) => {

    let keyword = props.searchParams['keyword']
    const data = await getData(keyword)


    return (
        <PlainLayout>
            <Newslist newslist={data['News']}/>
        </PlainLayout>
    )
}
export default Page;