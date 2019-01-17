import React from 'react';
import ReactDOM from 'react-dom';

class ApplicationComponent extends React.Component {
  render() {
    return (
      <div className="jumbotron jumbotron-fluid">
        <div className="container">
          <h1 className="display-4">Welcome to the Airbo Book Club</h1>
          <p className="lead">Where reading is always an adventure 🤓</p>
          <p style={{textAlign:'center'}}>📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖 📖</p>

          <h3>Admin Dashboard</h3>
          <div className="card">
            <div className="card-body">
              <h5 className="card-title">Users</h5>
              <a href="#" className="card-link">View All Users</a>
            </div>
            <ul id="user-list" className="list-group list-group-flush">
              <li className="list-group-item user-js">Your JS code should generate list on click</li>
            </ul>
          </div>
        </div>
      </div>
    )
  }
};

export default ApplicationComponent;
