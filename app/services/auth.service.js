import db from '../config/database';

class AuthService {
  constructor() {}

  addLeadData = (data) => {
    return db('dataingestion').insert(data);
  };
  getLeadData = (id) => {
    return db('dataingestion').select().where('id', id)
  };

}

export default new AuthService();
