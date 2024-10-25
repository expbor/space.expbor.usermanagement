using space.expbor.usermanagement as usermanagement from '../db/schema';

service UserManagementService {

    entity User as projection on usermanagement.User;

}
