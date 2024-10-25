module.exports = (srv) => {

    // srv.on('READ', 'User', () => [
    //     { ID: 1, email: '1@1.de', password: 'abcdef', active: true, confirmationCode: 'ABCDE', creationTimeConfirmationCode: '2021-06-27T14:52:23Z', creationTimeUser: '2021-06-27T14:52:23Z' },
    //     { ID: 2, email: '2@2.de', password: 'abcdef', active: true, confirmationCode: 'ABCDE', creationTimeConfirmationCode: '2021-06-27T14:52:23Z', creationTimeUser: '2021-06-27T14:52:23Z' },
    //     { ID: 3, email: '3@3.de', password: 'abcdef', active: true, confirmationCode: 'ABCDE', creationTimeConfirmationCode: '2021-06-27T14:52:23Z', creationTimeUser: '2021-06-27T14:52:23Z' },
    //     { ID: 4, email: '4@4.de', password: 'abcdef', active: true, confirmationCode: 'ABCDE', creationTimeConfirmationCode: '2021-06-27T14:52:23Z', creationTimeUser: '2021-06-27T14:52:23Z' }
    // ]);

    // const{User} = cds.entities('space.expbor.usermanagement.User')

    srv.before ('CREATE', 'User', async (req) => {
        const user = req.data
        const tx = cds.transaction(req)
    })

}

