
import {NextResponse} from "next/server";
import {PrismaClient} from "@prisma/client"
import {CreateToken} from "@/utility/JWTTokenHelper";

export async function POST(req,res) {

    let expireDuration=new Date(Date.now() - 24*60*60*1000 );

    const response = NextResponse.redirect(new URL('/', req.url));
    response.cookies.set('token', '', { expires: expireDuration });

    return response;

}
