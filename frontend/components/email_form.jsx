import React from 'react';
import { createEmail } from '../actions/email_actions';

class EmailForm extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      to_email_address: '',
      subject: '',
      body: '',
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const email = Object.assign({}, this.state);
    createEmail(email);
    this.props.history.push('/success');
  }

  render() {

    return (
      <form onSubmit={this.handleSubmit} className="form">
        <h3>Email Address</h3>
        <input
          className="email-address-input"
          type='text'
          value={this.state.to_email_address}
          onChange={this.update('to_email_address')}
        />
        <br/>
        <h3>Subject</h3>
        <input
          className="subject-input"
          type='text'
          value={this.state.subject}
          onChange={this.update('subject')}
        />
        <br/>
        <h3>Body</h3>
        <textarea
          className="body-input"
          value={this.state.body}
          onChange={this.update('body')}
        />
        <br/>
        <br/>
        <input
          className="submit-button"
          type="submit"
          value="Submit"
        />
      </form>
    );

  }
}

export default EmailForm;
