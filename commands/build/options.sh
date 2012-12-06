# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu Dec  6 14:56:42 PST 2012
#
#/ usage: rpm:build [ --arch|-a <noarch>]  --name|-n <> [ --release|-r <1>] [ --topdir|-t </usr/src/rpm>]  --version|-v <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {
    
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --arch|-a) rerun_option_check $# ; ARCH=$2 ; shift ;;
            --name|-n) rerun_option_check $# ; NAME=$2 ; shift ;;
            --release|-r) rerun_option_check $# ; RELEASE=$2 ; shift ;;
            --topdir|-t) rerun_option_check $# ; TOPDIR=$2 ; shift ;;
            --version|-v) rerun_option_check $# ; VERSION=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$ARCH" ] && ARCH="noarch"
    [ -z "$RELEASE" ] && RELEASE="1"
    [ -z "$TOPDIR" ] && TOPDIR="/usr/src/rpm"
    # Check required options are set
    [ -z "$NAME" ] && { echo >&2 "missing required option: --name" ; return 2 ; }
    [ -z "$VERSION" ] && { echo >&2 "missing required option: --version" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
ARCH=
NAME=
RELEASE=
TOPDIR=
VERSION=


