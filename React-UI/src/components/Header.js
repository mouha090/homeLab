import { Nav, Navbar, Form, FormControl, Button } from "react-bootstrap";
import logo from "../images/logo.png";

// import {
//   BrowserRouter as Router,
//   Switch,
//   Route,
//   useParams,
// } from "react-router-dom";

function Header() {
  return (
    <div className=" welcome    ">
      {/* <Router> */}
      <nav className="navbar navbar-expand navbar-dark ">
        <div className="container-fluid">
          <a className="navbar-brand" href="#">
            <img
              width="30px"
              height="30px"
              className="img-responsive"
              src={logo}
            />
          </a>
          <button
            className="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
          >
            <span className="navbar-toggler-icon"></span>
          </button>
          <div
            className="collapse navbar-collapse justify-content-end"
            id="navbarNav"
          >
            <ul className="navbar-nav">
              <li className="nav-item">
                <a className="nav-link active" aria-current="page" href="#">
                  Services
                </a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#">
                  A propos de nous
                </a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#">
                  Nos laboratoires
                </a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#">
                  <p className=" text-center rounded-pill bg-white btn0">
                    Connexion
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      {/* <br />
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>
          <Route path="/about-us">
            <AboutUs />
          </Route>
          <Route path="/contact-us">
            <ContactUs />
          </Route>
        </Switch> */}
      {/* </Router> */}
    </div>
  );
}
export default Header;
