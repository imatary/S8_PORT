.class public final Llibcore/net/MimeUtils;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field private static final extensionToMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mimeTypeToExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    const-string/jumbo v0, "application/andrew-inset"

    const-string/jumbo v1, "ez"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/dsptype"

    const-string/jumbo v1, "tsp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/epub+zip"

    const-string/jumbo v1, "epub"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/hta"

    const-string/jumbo v1, "hta"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/mac-binhex40"

    const-string/jumbo v1, "hqx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/mathematica"

    const-string/jumbo v1, "nb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/msaccess"

    const-string/jumbo v1, "mdb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/oda"

    const-string/jumbo v1, "oda"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/ogg"

    const-string/jumbo v1, "ogg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/ogg"

    const-string/jumbo v1, "oga"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/pdf"

    const-string/jumbo v1, "pdf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/pgp-keys"

    const-string/jumbo v1, "key"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/pgp-signature"

    const-string/jumbo v1, "pgp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/pics-rules"

    const-string/jumbo v1, "prf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/pkix-cert"

    const-string/jumbo v1, "cer"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/rar"

    const-string/jumbo v1, "rar"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/rdf+xml"

    const-string/jumbo v1, "rdf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/rss+xml"

    const-string/jumbo v1, "rss"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/zip"

    const-string/jumbo v1, "zip"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.android.package-archive"

    const-string/jumbo v1, "apk"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.cinderella"

    const-string/jumbo v1, "cdy"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.ms-pki.stl"

    const-string/jumbo v1, "stl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.database"

    const-string/jumbo v1, "odb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.formula"

    const-string/jumbo v1, "odf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.graphics"

    const-string/jumbo v1, "odg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.graphics-template"

    const-string/jumbo v1, "otg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.image"

    const-string/jumbo v1, "odi"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.presentation"

    const-string/jumbo v1, "odp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.presentation-template"

    const-string/jumbo v1, "otp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.spreadsheet"

    const-string/jumbo v1, "ods"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string/jumbo v1, "ots"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.text"

    const-string/jumbo v1, "odt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.text-master"

    const-string/jumbo v1, "odm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.text-template"

    const-string/jumbo v1, "ott"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.oasis.opendocument.text-web"

    const-string/jumbo v1, "oth"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.google-earth.kml+xml"

    const-string/jumbo v1, "kml"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.google-earth.kmz"

    const-string/jumbo v1, "kmz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/msword"

    const-string/jumbo v1, "doc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/msword"

    const-string/jumbo v1, "dot"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string/jumbo v1, "docx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string/jumbo v1, "dotx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.ms-excel"

    const-string/jumbo v1, "xls"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.ms-excel"

    const-string/jumbo v1, "xlt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string/jumbo v1, "xlsx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string/jumbo v1, "xltx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.ms-powerpoint"

    const-string/jumbo v1, "ppt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.ms-powerpoint"

    const-string/jumbo v1, "pot"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.ms-powerpoint"

    const-string/jumbo v1, "pps"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string/jumbo v1, "pptx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string/jumbo v1, "potx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string/jumbo v1, "ppsx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.rim.cod"

    const-string/jumbo v1, "cod"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.smaf"

    const-string/jumbo v1, "mmf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.calc"

    const-string/jumbo v1, "sdc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.draw"

    const-string/jumbo v1, "sda"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.impress"

    const-string/jumbo v1, "sdd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.impress"

    const-string/jumbo v1, "sdp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.math"

    const-string/jumbo v1, "smf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.writer"

    const-string/jumbo v1, "sdw"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.writer"

    const-string/jumbo v1, "vor"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.stardivision.writer-global"

    const-string/jumbo v1, "sgl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.calc"

    const-string/jumbo v1, "sxc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.calc.template"

    const-string/jumbo v1, "stc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.draw"

    const-string/jumbo v1, "sxd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.draw.template"

    const-string/jumbo v1, "std"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.impress"

    const-string/jumbo v1, "sxi"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.impress.template"

    const-string/jumbo v1, "sti"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.math"

    const-string/jumbo v1, "sxm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.writer"

    const-string/jumbo v1, "sxw"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.writer.global"

    const-string/jumbo v1, "sxg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.sun.xml.writer.template"

    const-string/jumbo v1, "stw"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.visio"

    const-string/jumbo v1, "vsd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-abiword"

    const-string/jumbo v1, "abw"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-apple-diskimage"

    const-string/jumbo v1, "dmg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-bcpio"

    const-string/jumbo v1, "bcpio"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-bittorrent"

    const-string/jumbo v1, "torrent"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-cdf"

    const-string/jumbo v1, "cdf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-cdlink"

    const-string/jumbo v1, "vcd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-chess-pgn"

    const-string/jumbo v1, "pgn"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-cpio"

    const-string/jumbo v1, "cpio"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-debian-package"

    const-string/jumbo v1, "deb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-debian-package"

    const-string/jumbo v1, "udeb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-director"

    const-string/jumbo v1, "dcr"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-director"

    const-string/jumbo v1, "dir"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-director"

    const-string/jumbo v1, "dxr"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-dms"

    const-string/jumbo v1, "dms"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-doom"

    const-string/jumbo v1, "wad"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-dvi"

    const-string/jumbo v1, "dvi"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-font"

    const-string/jumbo v1, "pfa"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-font"

    const-string/jumbo v1, "pfb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-font"

    const-string/jumbo v1, "gsf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-font"

    const-string/jumbo v1, "pcf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-font"

    const-string/jumbo v1, "pcf.Z"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-freemind"

    const-string/jumbo v1, "mm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-futuresplash"

    const-string/jumbo v1, "spl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/futuresplash"

    const-string/jumbo v1, "spl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-gnumeric"

    const-string/jumbo v1, "gnumeric"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-go-sgf"

    const-string/jumbo v1, "sgf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-graphing-calculator"

    const-string/jumbo v1, "gcf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-gtar"

    const-string/jumbo v1, "tgz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-gtar"

    const-string/jumbo v1, "gtar"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-gtar"

    const-string/jumbo v1, "taz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-hdf"

    const-string/jumbo v1, "hdf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-hwp"

    const-string/jumbo v1, "hwp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-ica"

    const-string/jumbo v1, "ica"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-internet-signup"

    const-string/jumbo v1, "ins"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-internet-signup"

    const-string/jumbo v1, "isp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-iphone"

    const-string/jumbo v1, "iii"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-iso9660-image"

    const-string/jumbo v1, "iso"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-jmol"

    const-string/jumbo v1, "jmz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-kchart"

    const-string/jumbo v1, "chrt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-killustrator"

    const-string/jumbo v1, "kil"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-koan"

    const-string/jumbo v1, "skp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-koan"

    const-string/jumbo v1, "skd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-koan"

    const-string/jumbo v1, "skt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-koan"

    const-string/jumbo v1, "skm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-kpresenter"

    const-string/jumbo v1, "kpr"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-kpresenter"

    const-string/jumbo v1, "kpt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-kspread"

    const-string/jumbo v1, "ksp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-kword"

    const-string/jumbo v1, "kwd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-kword"

    const-string/jumbo v1, "kwt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-latex"

    const-string/jumbo v1, "latex"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-lha"

    const-string/jumbo v1, "lha"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-lzh"

    const-string/jumbo v1, "lzh"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-lzx"

    const-string/jumbo v1, "lzx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-maker"

    const-string/jumbo v1, "frm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-maker"

    const-string/jumbo v1, "maker"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-maker"

    const-string/jumbo v1, "frame"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-maker"

    const-string/jumbo v1, "fb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-maker"

    const-string/jumbo v1, "book"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-maker"

    const-string/jumbo v1, "fbdoc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-mif"

    const-string/jumbo v1, "mif"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-ms-wmd"

    const-string/jumbo v1, "wmd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-ms-wmz"

    const-string/jumbo v1, "wmz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-msi"

    const-string/jumbo v1, "msi"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-ns-proxy-autoconfig"

    const-string/jumbo v1, "pac"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-nwc"

    const-string/jumbo v1, "nwc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-object"

    const-string/jumbo v1, "o"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-oz-application"

    const-string/jumbo v1, "oza"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-pem-file"

    const-string/jumbo v1, "pem"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-pkcs12"

    const-string/jumbo v1, "p12"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-pkcs12"

    const-string/jumbo v1, "pfx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-pkcs7-certreqresp"

    const-string/jumbo v1, "p7r"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-pkcs7-crl"

    const-string/jumbo v1, "crl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-quicktimeplayer"

    const-string/jumbo v1, "qtl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-shar"

    const-string/jumbo v1, "shar"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-shockwave-flash"

    const-string/jumbo v1, "swf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-stuffit"

    const-string/jumbo v1, "sit"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-sv4cpio"

    const-string/jumbo v1, "sv4cpio"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-sv4crc"

    const-string/jumbo v1, "sv4crc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-tar"

    const-string/jumbo v1, "tar"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-texinfo"

    const-string/jumbo v1, "texinfo"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-texinfo"

    const-string/jumbo v1, "texi"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-troff"

    const-string/jumbo v1, "t"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-troff"

    const-string/jumbo v1, "roff"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-troff-man"

    const-string/jumbo v1, "man"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-ustar"

    const-string/jumbo v1, "ustar"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-wais-source"

    const-string/jumbo v1, "src"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-wingz"

    const-string/jumbo v1, "wz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-webarchive"

    const-string/jumbo v1, "webarchive"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-webarchive-xml"

    const-string/jumbo v1, "webarchivexml"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-x509-ca-cert"

    const-string/jumbo v1, "crt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-x509-user-cert"

    const-string/jumbo v1, "crt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-x509-server-cert"

    const-string/jumbo v1, "crt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-xcf"

    const-string/jumbo v1, "xcf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-xfig"

    const-string/jumbo v1, "fig"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/xhtml+xml"

    const-string/jumbo v1, "xhtml"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/3gpp"

    const-string/jumbo v1, "3gpp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/aac"

    const-string/jumbo v1, "aac"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/aac-adts"

    const-string/jumbo v1, "aac"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/amr"

    const-string/jumbo v1, "amr"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/amr-wb"

    const-string/jumbo v1, "awb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/basic"

    const-string/jumbo v1, "snd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/flac"

    const-string/jumbo v1, "flac"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-flac"

    const-string/jumbo v1, "flac"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/ssf"

    const-string/jumbo v1, "ssf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/x-sasf"

    const-string/jumbo v1, "sasf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/imelody"

    const-string/jumbo v1, "imy"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/midi"

    const-string/jumbo v1, "mid"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/midi"

    const-string/jumbo v1, "midi"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/midi"

    const-string/jumbo v1, "ota"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/midi"

    const-string/jumbo v1, "kar"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/midi"

    const-string/jumbo v1, "rtttl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/midi"

    const-string/jumbo v1, "xmf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/mobile-xmf"

    const-string/jumbo v1, "mxmf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/mpeg"

    const-string/jumbo v1, "mp3"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/mpeg"

    const-string/jumbo v1, "mpga"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/mpeg"

    const-string/jumbo v1, "mpega"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/mpeg"

    const-string/jumbo v1, "mp2"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/mpeg"

    const-string/jumbo v1, "m4a"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/mpegurl"

    const-string/jumbo v1, "m3u"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/prs.sid"

    const-string/jumbo v1, "sid"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-aiff"

    const-string/jumbo v1, "aif"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-aiff"

    const-string/jumbo v1, "aiff"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-aiff"

    const-string/jumbo v1, "aifc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-gsm"

    const-string/jumbo v1, "gsm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-matroska"

    const-string/jumbo v1, "mka"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-mpegurl"

    const-string/jumbo v1, "m3u"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-ms-wma"

    const-string/jumbo v1, "wma"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-ms-wax"

    const-string/jumbo v1, "wax"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-pn-realaudio"

    const-string/jumbo v1, "ra"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-pn-realaudio"

    const-string/jumbo v1, "rm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-pn-realaudio"

    const-string/jumbo v1, "ram"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-realaudio"

    const-string/jumbo v1, "ra"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-scpls"

    const-string/jumbo v1, "pls"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-sd2"

    const-string/jumbo v1, "sd2"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "audio/x-wav"

    const-string/jumbo v1, "wav"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-ms-bmp"

    const-string/jumbo v1, "bmp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/bmp"

    const-string/jumbo v1, "bmp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/gif"

    const-string/jumbo v1, "gif"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-icon"

    const-string/jumbo v1, "ico"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/ico"

    const-string/jumbo v1, "cur"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/ico"

    const-string/jumbo v1, "ico"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/ief"

    const-string/jumbo v1, "ief"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/jpeg"

    const-string/jumbo v1, "jpg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/jpeg"

    const-string/jumbo v1, "jpeg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/jpeg"

    const-string/jumbo v1, "jpe"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/pcx"

    const-string/jumbo v1, "pcx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/png"

    const-string/jumbo v1, "png"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/svg+xml"

    const-string/jumbo v1, "svg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/svg+xml"

    const-string/jumbo v1, "svgz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/tiff"

    const-string/jumbo v1, "tiff"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/tiff"

    const-string/jumbo v1, "tif"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/vnd.djvu"

    const-string/jumbo v1, "djvu"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/vnd.djvu"

    const-string/jumbo v1, "djv"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/vnd.wap.wbmp"

    const-string/jumbo v1, "wbmp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/webp"

    const-string/jumbo v1, "webp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-adobe-dng"

    const-string/jumbo v1, "dng"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-canon-cr2"

    const-string/jumbo v1, "cr2"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-cmu-raster"

    const-string/jumbo v1, "ras"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-coreldraw"

    const-string/jumbo v1, "cdr"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-coreldrawpattern"

    const-string/jumbo v1, "pat"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-coreldrawtemplate"

    const-string/jumbo v1, "cdt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-corelphotopaint"

    const-string/jumbo v1, "cpt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-fuji-raf"

    const-string/jumbo v1, "raf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-jg"

    const-string/jumbo v1, "art"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-jng"

    const-string/jumbo v1, "jng"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-nikon-nef"

    const-string/jumbo v1, "nef"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-nikon-nrw"

    const-string/jumbo v1, "nrw"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-olympus-orf"

    const-string/jumbo v1, "orf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-panasonic-rw2"

    const-string/jumbo v1, "rw2"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-pentax-pef"

    const-string/jumbo v1, "pef"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-photoshop"

    const-string/jumbo v1, "psd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-portable-anymap"

    const-string/jumbo v1, "pnm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-portable-bitmap"

    const-string/jumbo v1, "pbm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-portable-graymap"

    const-string/jumbo v1, "pgm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-portable-pixmap"

    const-string/jumbo v1, "ppm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-samsung-srw"

    const-string/jumbo v1, "srw"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-sony-arw"

    const-string/jumbo v1, "arw"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-rgb"

    const-string/jumbo v1, "rgb"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-xbitmap"

    const-string/jumbo v1, "xbm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-xpixmap"

    const-string/jumbo v1, "xpm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "image/x-xwindowdump"

    const-string/jumbo v1, "xwd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "model/iges"

    const-string/jumbo v1, "igs"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "model/iges"

    const-string/jumbo v1, "iges"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "model/mesh"

    const-string/jumbo v1, "msh"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "model/mesh"

    const-string/jumbo v1, "mesh"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "model/mesh"

    const-string/jumbo v1, "silo"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/calendar"

    const-string/jumbo v1, "ics"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/calendar"

    const-string/jumbo v1, "icz"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/comma-separated-values"

    const-string/jumbo v1, "csv"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/css"

    const-string/jumbo v1, "css"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/html"

    const-string/jumbo v1, "htm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/html"

    const-string/jumbo v1, "html"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/h323"

    const-string/jumbo v1, "323"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/iuls"

    const-string/jumbo v1, "uls"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/mathml"

    const-string/jumbo v1, "mml"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/plain"

    const-string/jumbo v1, "txt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/plain"

    const-string/jumbo v1, "asc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/plain"

    const-string/jumbo v1, "text"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/plain"

    const-string/jumbo v1, "diff"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/plain"

    const-string/jumbo v1, "po"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/richtext"

    const-string/jumbo v1, "rtx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/rtf"

    const-string/jumbo v1, "rtf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/text"

    const-string/jumbo v1, "phps"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/tab-separated-values"

    const-string/jumbo v1, "tsv"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/xml"

    const-string/jumbo v1, "xml"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-bibtex"

    const-string/jumbo v1, "bib"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-boo"

    const-string/jumbo v1, "boo"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++hdr"

    const-string/jumbo v1, "hpp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++hdr"

    const-string/jumbo v1, "h++"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++hdr"

    const-string/jumbo v1, "hxx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++hdr"

    const-string/jumbo v1, "hh"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++src"

    const-string/jumbo v1, "cpp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++src"

    const-string/jumbo v1, "c++"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++src"

    const-string/jumbo v1, "cc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-c++src"

    const-string/jumbo v1, "cxx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-chdr"

    const-string/jumbo v1, "h"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-component"

    const-string/jumbo v1, "htc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-csh"

    const-string/jumbo v1, "csh"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-csrc"

    const-string/jumbo v1, "c"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-dsrc"

    const-string/jumbo v1, "d"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-haskell"

    const-string/jumbo v1, "hs"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-java"

    const-string/jumbo v1, "java"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-literate-haskell"

    const-string/jumbo v1, "lhs"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-moc"

    const-string/jumbo v1, "moc"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-pascal"

    const-string/jumbo v1, "p"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-pascal"

    const-string/jumbo v1, "pas"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-pcs-gcd"

    const-string/jumbo v1, "gcd"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-setext"

    const-string/jumbo v1, "etx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-tcl"

    const-string/jumbo v1, "tcl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-tex"

    const-string/jumbo v1, "tex"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-tex"

    const-string/jumbo v1, "ltx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-tex"

    const-string/jumbo v1, "sty"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-tex"

    const-string/jumbo v1, "cls"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-vcalendar"

    const-string/jumbo v1, "vcs"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text/x-vcard"

    const-string/jumbo v1, "vcf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/3gpp"

    const-string/jumbo v1, "3gpp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/3gpp"

    const-string/jumbo v1, "3gp"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/3gpp2"

    const-string/jumbo v1, "3gpp2"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/3gpp2"

    const-string/jumbo v1, "3g2"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/avi"

    const-string/jumbo v1, "avi"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/dl"

    const-string/jumbo v1, "dl"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/dv"

    const-string/jumbo v1, "dif"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/dv"

    const-string/jumbo v1, "dv"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/fli"

    const-string/jumbo v1, "fli"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/m4v"

    const-string/jumbo v1, "m4v"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/mp2ts"

    const-string/jumbo v1, "ts"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/mpeg"

    const-string/jumbo v1, "mpeg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/mpeg"

    const-string/jumbo v1, "mpg"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/mpeg"

    const-string/jumbo v1, "mpe"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/mp4"

    const-string/jumbo v1, "mp4"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/mpeg"

    const-string/jumbo v1, "VOB"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/quicktime"

    const-string/jumbo v1, "qt"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/quicktime"

    const-string/jumbo v1, "mov"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/vnd.mpegurl"

    const-string/jumbo v1, "mxu"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/webm"

    const-string/jumbo v1, "webm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-la-asf"

    const-string/jumbo v1, "lsf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-la-asf"

    const-string/jumbo v1, "lsx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-matroska"

    const-string/jumbo v1, "mkv"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-mng"

    const-string/jumbo v1, "mng"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-ms-asf"

    const-string/jumbo v1, "asf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-ms-asf"

    const-string/jumbo v1, "asx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-ms-wm"

    const-string/jumbo v1, "wm"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-ms-wmv"

    const-string/jumbo v1, "wmv"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-ms-wmx"

    const-string/jumbo v1, "wmx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-ms-wvx"

    const-string/jumbo v1, "wvx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-sgi-movie"

    const-string/jumbo v1, "movie"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video/x-webex"

    const-string/jumbo v1, "wrf"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-conference/x-cooltalk"

    const-string/jumbo v1, "ice"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-epoc/x-sisx-app"

    const-string/jumbo v1, "sisx"

    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static hasExtension(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasMimeType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
