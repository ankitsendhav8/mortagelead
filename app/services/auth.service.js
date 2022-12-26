import db from '../config/database';

class AuthService {
  constructor() {}

  addLeadData = (data) => {
    return db('dataingestion').insert(data);
  };
  getLeadData = (id) => {
    return db('dataingestion').select().where('id', id);
  };

  checkphoneNumber = (phoneNumber) => {
    return db('dataingestion').select().where('vPhoneCell', phoneNumber);
  };
}

export default new AuthService();
