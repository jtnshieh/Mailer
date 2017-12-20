import React from 'react';
import EmailForm from './email_form';
import { Route, HashRouter, Switch } from 'react-router-dom';

const Root = () => (
  <HashRouter>
    <div>
      <Switch>
        <Route path='/sendEmail' component={EmailForm}/>
        <Route path='/success' render={() => <span>Successfully sent!</span>}/>
      </Switch>
    </div>
  </HashRouter>
);

export default Root;
