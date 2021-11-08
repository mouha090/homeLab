import profil from "../images/profil.png";
function Login() {
  return (
    <div className="main-log">
      <div className="log">
        <form>
          <div className="imgs">
            <div className="container-image">
              <img height="50px" width="50px" src={profil} />
            </div>
          </div>
          <div className="form-group">
            <label for="exampleInputEmail1">Nom d'utilisateur</label>
            <input
              type="email"
              className="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              placeholder="Enter email"
            />
            <small id="emailHelp" className="form-text text-muted">
              {/* Veuillez enter votre nom d'utilisateur */}
            </small>
          </div>
          <br />
          <div className="form-group">
            <label for="exampleInputPassword1">Mot De Passe</label>
            <input
              type="password"
              className="form-control"
              id="exampleInputPassword1"
              placeholder="Password"
            />
          </div>
          <br />
          <button type="submit" className="btn btn-primary sub">
            Envoyer
          </button>
        </form>
      </div>
    </div>
  );
}

export default Login;
