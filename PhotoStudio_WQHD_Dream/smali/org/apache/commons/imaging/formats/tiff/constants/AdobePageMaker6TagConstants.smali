.class public final Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;
.super Ljava/lang/Object;
.source "AdobePageMaker6TagConstants.java"


# static fields
.field public static final ALL_ADOBE_PAGEMAKER_6_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEXED_VALUE_INDEXED:I = 0x1

.field public static final INDEXED_VALUE_NOT_INDEXED:I = 0x0

.field public static final OPIPROXY_VALUE_HIGHER_RESOLUTION_IMAGE_DOES_NOT_EXIST:I = 0x0

.field public static final OPIPROXY_VALUE_HIGHER_RESOLUTION_IMAGE_EXISTS:I = 0x1

.field public static final TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

.field public static final TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    const-string v1, "SubIFDs"

    const/16 v2, 0x14a

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "ClipPath"

    const/16 v2, 0x157

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "XClipPathUnits"

    const/16 v2, 0x158

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "YClipPathUnits"

    const/16 v2, 0x159

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "Indexed"

    const/16 v2, 0x15a

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "OPIProxy"

    const/16 v2, 0x15f

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "ImageID"

    const v2, 0x800d

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->ALL_ADOBE_PAGEMAKER_6_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
