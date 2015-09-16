component {
    // you can provide a specific application name if you want:
    this.name = hash( getBaseTemplatePath() );
    // any other application settings:
    this.sessionManagement = true;
    this.mappings[ '/framework' ] = expandPath( '../../../framework' );

    // create your FW/1 application (with extension points):
    request._framework_one = new MyApplication( {
        trace : true,
        diComponent : "framework.ioclj",
        diLocations : getDirectoryFromPath( CGI.SCRIPT_NAME )
    } );

    // delegation of lifecycle methods to FW/1:
    function onApplicationStart() {
        return request._framework_one.onApplicationStart();
    }
    function onError( exception, event ) {
        return request._framework_one.onError( exception, event );
    }
    function onRequest( targetPath ) {
        return request._framework_one.onRequest( targetPath );
    }
    function onRequestEnd() {
        return request._framework_one.onRequestEnd();
    }
    function onRequestStart( targetPath ) {
        return request._framework_one.onRequestStart( targetPath );
    }
    function onSessionStart() {
        return request._framework_one.onSessionStart();
    }
}
