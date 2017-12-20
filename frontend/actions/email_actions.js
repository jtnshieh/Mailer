import axios from 'axios';

export const createEmail = (email) => dispatch => {
  axios.post('/emails', {email})
  .then((response) => console.log(response))
  .catch((error) => console.log(error));
};
