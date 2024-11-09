sap.ui.define("login.login.Authentification", 
    [
        "keycloak-js/lib/keycloak"
    ], function (Keycloakjs) {

        console.log("test");
        
        var Authentification = function (){
            Authentification.prototype.authenticate = async function (url, realm, clientId) {
                const keycloak = new Keycloakjs({
                    url: url,
                    realm: realm,
                    clientId: clientId
                });

                try {
                    const authenticated = await keycloak.init({
                        onLoad: 'login-required'
                    });
                    if (authenticated) {
                        console.log('User is authenticated');
                    } else {
                        console.log('User is not authenticated');
                    }
                } catch (error) {
                    console.error('Failed to initialize adapter:', error);
                }
            }
        };

        return Authentification;
    });