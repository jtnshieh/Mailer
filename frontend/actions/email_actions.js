import axios from 'axios';

export const createEmail = (email) => {
  axios.post('/emails', {email});
};
