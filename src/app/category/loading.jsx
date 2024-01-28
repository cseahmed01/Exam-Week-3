import PlainLayout from '@/components/MasterLayout/PlainLayout';
import React from 'react';

const loading = () => {
    return (
        <div>
            <PlainLayout>
                <div className="container" style={{ height: "350px" }}>
                    <div className="row flex justify-content-center" style={{ height: "350px" }}>
                        <h1>Loading ...</h1>
                    </div>
                </div>
            </PlainLayout>
        </div>
    );
};

export default loading;