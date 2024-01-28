 
 
import'../app/assets/css/bootstrap.min.css'
import'../app/assets/css/style.css'
 
import 'bootstrap-icons/font/bootstrap-icons.css'
import Head from 'next/head'


// or Dynamic metadata
export async function generateMetadata({ params }) {
  return {
    title: 'E-News | Home',
    generator: 'Next.js',
    applicationName: 'Next.js',
    referrer: 'origin-when-cross-origin',
    keywords: ['Next.js', 'React', 'JavaScript'],
    authors: [{ name: 'Seb' }, { name: 'Josh', url: 'https://nextjs.org' }],
    creator: 'Jiachi Liu',
    publisher: 'Sebastian Markbåge',
    formatDetection: {
      email: false,
      address: false,
      telephone: false,
    },
  }
}
export default function RootLayout({ children }) {
  return (

    <html lang="en">
      <>
      <Head>
 
      </Head>
      <body >{children}</body>
      </>
    </html>
  );
}
