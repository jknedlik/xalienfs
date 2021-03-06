# This file was automatically generated by SWIG
package gapiUI;
require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
package gapiUIc;
bootstrap gapiUI;
package gapiUI;
@EXPORT = qw( );

# ---------- BASE METHODS -------------

package gapiUI;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package gapiUI;

*gbboxEnvFilename = *gapiUIc::gbboxEnvFilename;

############# Class : gapiUI::GapiUI ##############

package gapiUI::GapiUI;
@ISA = qw( gapiUI );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        gapiUIc::delete_GapiUI($self);
        delete $OWNER{$self};
    }
}

*MakeGapiUI = *gapiUIc::GapiUI_MakeGapiUI;
*SetGapiUI = *gapiUIc::GapiUI_SetGapiUI;
*GetGapiUI = *gapiUIc::GapiUI_GetGapiUI;
*Connect = *gapiUIc::GapiUI_Connect;
*Connected = *gapiUIc::GapiUI_Connected;
*Reconnect = *gapiUIc::GapiUI_Reconnect;
*GetAuthenURL = *gapiUIc::GapiUI_GetAuthenURL;
*Command = *gapiUIc::GapiUI_Command;
*getResult = *gapiUIc::GapiUI_getResult;
*readTags = *gapiUIc::GapiUI_readTags;
*GetStreamColumns = *gapiUIc::GapiUI_GetStreamColumns;
*GetStreamFieldValue = *gapiUIc::GapiUI_GetStreamFieldValue;
*GetStreamFieldKey = *gapiUIc::GapiUI_GetStreamFieldKey;
*GetStreamRows = *gapiUIc::GapiUI_GetStreamRows;
*PrintCommandStdout = *gapiUIc::GapiUI_PrintCommandStdout;
*PrintCommandStderr = *gapiUIc::GapiUI_PrintCommandStderr;
*GetMotd = *gapiUIc::GapiUI_GetMotd;
*eof = *gapiUIc::GapiUI_eof;
*readsome = *gapiUIc::GapiUI_readsome;
*getline = *gapiUIc::GapiUI_getline;
*skipWhitespace = *gapiUIc::GapiUI_skipWhitespace;
*cwd = *gapiUIc::GapiUI_cwd;
*getVersion = *gapiUIc::GapiUI_getVersion;
*getServerInfo = *gapiUIc::GapiUI_getServerInfo;
*setCWD = *gapiUIc::GapiUI_setCWD;
*GetUser = *gapiUIc::GapiUI_GetUser;
*Shell = *gapiUIc::GapiUI_Shell;
*ping = *gapiUIc::GapiUI_ping;
*setOption = *gapiUIc::GapiUI_setOption;
*GetErrorType = *gapiUIc::GapiUI_GetErrorType;
*ErrorMatches = *gapiUIc::GapiUI_ErrorMatches;
*GetErrorDetail = *gapiUIc::GapiUI_GetErrorDetail;
*DebugDumpStreams = *gapiUIc::GapiUI_DebugDumpStreams;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package gapiUI;

*DEBUGMACRO = *gapiUIc::DEBUGMACRO;
1;
