import "./App.css";
import "./components/Header";
import "bootstrap/dist/css/bootstrap.min.css";
import Header from "./components/Header";
import Login from "./components/Login";
import img1 from "./images/img1.png";
import img2 from "./images/img2.png";
import img3 from "./images/img3.png";
import img4 from "./images/img4.png";
import labo from "./images/labo.png";
import Footer from "./components/Footer";

function App() {
  return (
    <div>
      <Header />
      <Login />
      {/* <div className="container-lg ctn ">
        <div className="r1 row">
          <div className="col-md-5 col-sm-4 ">
            <h1 className="impt">HomeLab</h1>
            <br />
            Vous voulez effectuer une analyse qui vous a été prescrite.
            <br />
            <br />
            Plus besoin de vous déplacer, au lieu de se déplacer vers les
            laboratoires d’analyse, ce sont les laboratoires qui se déplacent
            vers vous. Grâce à la plateforme HomeLab faites vous analyser ou que
            vous soyez
            <br />
            <br />
            <a className="nav-link" href="#">
              <p className=" text-white text-center p-2 rounded-pill btn1">
                Demander une analyse
              </p>
            </a>
          </div>

          <div className="col-1"></div>

          <div className="col-md-4 ">
            <img className="img1" src={img1} />
          </div>
        </div>

        <div className="r2 row">
          <h4 className="impt t2">Comment faisons nous ?</h4>
          <br />

          <div className="col-md-4">
            <img className="img2" src={img2} />
          </div>
          <div className="col-2"></div>
          <div className="col-md-5 col-sm-4 ">
            <br />
            <br />
            <h4 className="impt ">Contacter-nous </h4>
            Vous voulez effectuer une analyse qui vous a été prescrite.
            <br />
            <br />
            Plus besoin de vous déplacer, au lieu de se déplacer vers les
            laboratoires d’analyse, ce sont les laboratoires qui se déplacent
            vers vous. Grâce à la plateforme HomeLab faites vous analyser ou que
            vous soyez.
          </div>
        </div>

        <div className="r3 row">
          <div className="col-md-5 col-sm-4 ">
            <h5 className="impt">Faites votre votre choix</h5>
            <br />
            <br />
            Vous voulez effectuer une analyse qui vous a été prescrite
            <br />
            <br />
            Plus besoin de vous déplacer, au lieu de se déplacer vers les
            laboratoires d’analyse, ce sont les laboratoires qui se déplacent
            vers vous. Grâce à la plateforme HomeLab faites vous analyser ou que
            vous soyez
            <br />
          </div>

          <div className="col-1"></div>

          <div className="col-md-4 ">
            <img className="img3" src={img3} />
          </div>
        </div>

        <div className="r4 row">
          <div className="col-md-4">
            <img className="img4" src={img4} />
          </div>
          <div className="col-2"></div>
          <div className="col-md-5 col-sm-4 ">
            <br />
            <h3 className="impt t2">Confirmez et attendez notre equipe </h3>
            <br />
            Vous voulez effectuer une analyse qui vous a été prescrite.
            <br />
            <br />
            Plus besoin de vous déplacer, au lieu de se déplacer vers les
            laboratoires d’analyse, ce sont les laboratoires qui se déplacent
            vers vous. Grâce à la plateforme HomeLab faites vous analyser ou que
            vous soyez.
          </div>
        </div>

        <div className="r5 row ">
          <h3 className="labo impt">Nos laboratoires </h3>
          <div className="col-3">
            <img className="lab" src={labo} />
            <br />
            <br />
            <div className="text">
              Plus besoin de vous déplacer, au lieu de se déplacer vers les
              laboratoires d’analyse, ce sont les laboratoires qui se déplacent
              vers vous. Grâce à la plateforme HomeLab faites vous analyser ou
              que vous soyez
            </div>

            <a className="nav-link" href="#">
              <p className=" text-white text-center p-1 rounded-pill labos">
                voir le labo
              </p>
            </a>
          </div>
          <div className="col-1"></div>
          <div className="col-3">
            <img className="lab" src={labo} />
            <br />
            <br />
            <div className="text">
              Plus besoin de vous déplacer, au lieu de se déplacer vers les
              laboratoires d’analyse, ce sont les laboratoires qui se déplacent
              vers vous. Grâce à la plateforme HomeLab faites vous analyser ou
              que vous soyez
            </div>

            <a className="nav-link" href="#">
              <p className=" text-white text-center p-1 rounded-pill labos">
                voir le labo
              </p>
            </a>
          </div>
          <div className="col-1"></div>
          <div className="col-3 ">
            <img className="lab" src={labo} />
            <br />
            <br />
            <div className="text">
              Plus besoin de vous déplacer, au lieu de se déplacer vers les
              laboratoires d’analyse, ce sont les laboratoires qui se déplacent
              vers vous. Grâce à la plateforme HomeLab faites vous analyser ou
              que vous soyez
            </div>

            <a className="nav-link link" href="#">
              <p className=" text-white text-center p-1 rounded-pill labos">
                voir le labo
              </p>
            </a>
          </div>
        </div>
      </div>
      <Footer /> */}
    </div>
  );
}

export default App;
