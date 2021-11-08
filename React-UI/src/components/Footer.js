import {} from "react-bootstrap/";
import logo from "../images/logo.png";
function Footer() {
  return (
    <div>
      {/* <footer className="footer">
        <div className="top-footer">
          <div className="container">
            <div className="row">
              <div className="col-md-4 col-sm-4 marb20">
                <div className="ftr-tle">
                  <h4 className="white no-padding">About Us</h4>
                </div>
                <div className="info-sec">
                  <p>
                    Praesent convallis tortor et enim laoreet, vel consectetur
                    purus latoque penatibus et dis parturient.
                  </p>
                </div>
              </div>
              <div className="col-md-4 col-sm-4 marb20">
                <div className="info-sec">
                  <ul className="quick-info">
                    <li>
                      <a href="#">
                        <i className="fa fa-circle bg-white"></i>Services
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i className="fa fa-circle bg-white"></i>A propos de
                        nous
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i className="fa fa-circle bg-white"></i>Nos
                        laboratoires
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="col-md-4 col-sm-4 marb20">
                <div className="ftr-tle">
                  <h4 className="white no-padding">Follow us</h4>
                </div>
                <div className="info-sec">
                  <ul className="social-icon">
                    <li className="bglight-blue">
                      <i className="fa fa-facebook"></i>
                    </li>

                    <li className="bgdark-blue">
                      <i className="fa fa-linkedin"></i>
                    </li>
                    <li className="bglight-blue">
                      <i className="fa fa-twitter"></i>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div> */}
      {/* <div className="footer-line">
          <div className="col-md-12 text-center"> */}

      <footer>
        <div className="main-footer">
          <div className=" footer container">
            <div className="row">
              <div className=" s1 col-2">
                <img
                  width="30px"
                  height="30px"
                  className="img-footer"
                  src={logo}
                  alt="Homelab"
                />
                <br />
                <br />
                Plus besoin de vous déplacer, au lieu de se déplacer vers les
                laboratoires d’analyse, ce sont les laboratoires qui se
                déplacent vers vous. Grâce à la plateforme HomeLab faites vous
                analyser ou que vous soyez
              </div>
              <div className="col-2"></div>
              <div className="s2 col-3 ">
                <a className="nav-link text-white" href="#">
                  Demander une analyse
                </a>
                <a className="nav-link text-white" href="#">
                  Services
                </a>
                <a className="nav-link text-white" href="#">
                  A propos de nous
                </a>
                <a className="nav-link text-white" href="#">
                  Se connecter
                </a>
              </div>
              <div className="col-2"></div>
              <div className="s3 col-3 ">
                <a className="text-white nav-link" href="#">
                  Nous contacter
                </a>
                <a className="nav-link text-white" href="#">
                  Politiques de confidentialité
                </a>
                <a className="nav-link text-white" href="#">
                  Services client
                </a>
              </div>
              {/* © Copyright Homelab Theme. All Rights Reserved
              <div className="credits">
                Designed by <a href="#">Astou Lo</a>
              </div> */}
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}

export default Footer;
