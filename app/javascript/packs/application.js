import React from 'react';
import ReactDOM from 'react-dom';

import ApplicationComponent from '../components/ApplicationComponent';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ApplicationComponent />,
    document.getElementById("root"),
  )
});
