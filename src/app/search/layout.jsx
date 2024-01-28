// or Dynamic metadata
export async function generateMetadata({ params }) {
    return {
      title: 'E-News Search Page',
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

const layout = ({children}) => {
    return (
        <div>
            {children}
        </div>
    );
};

export default layout;