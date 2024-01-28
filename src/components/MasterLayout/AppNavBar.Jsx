"use client"

import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
 
import Link from 'next/link';
import {useEffect, useState} from "react";
import Cookies from "js-cookie";
const AppNavBar = (props) => {

  let [login, SetLogin] = useState(false);

  useEffect(() => {
    if (Cookies.get('token')) {
      SetLogin(true);
    }
    else {
      SetLogin(false);
    }
  }, []);
  return (
    <>
      <Navbar expand="lg" className="bg-body-tertiary bg-primary fw-bold" bg="light" data-bs-theme="light" style={{borderBottom:'2px solid black'}}>
        <Container>
          <Navbar.Brand href="/">E News</Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto text-bold">

              {
                props.data['categories'].map((Item, i) => {
                  return (
                    <Link style={{ fontWeight: 'bold', color: 'black' }} key={i} className="nav-link fw-bold" href={"/category?id=" + Item['id']} >{Item['name']}</Link>
                  )
                })
              }

              <>

                {
                  login ? (<Link href="/user/logout" className="btn ms-3 btn-outline-danger">Logout</Link>) : (<Link href="/user/login" className="btn ms-3 btn-outline-success">Login</Link>)
                }
              </>

            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </>
  );
};

export default AppNavBar;