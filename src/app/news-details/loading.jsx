import PlainLayout from '@/components/MasterLayout/PlainLayout';
import React from 'react';

const loading = () => {
    return (
        <>
            <PlainLayout>
                <div className="container" style={{ height: "350px" }}>
                    <div className="row flex justify-content-center" style={{ height: "350px" }}>
                        <h4>Loading ...</h4>
                    </div>
                </div>
            </PlainLayout>
        </>
    );
};

export default loading;