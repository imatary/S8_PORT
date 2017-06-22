.class public final Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;
.super Ljava/lang/Object;
.source "Rfc2301TagConstants.java"


# static fields
.field public static final ALL_RFC_2301_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLEAN_FAX_DATA_VALUE_CLEAN:I = 0x0

.field public static final CLEAN_FAX_DATA_VALUE_REGENERATED:I = 0x1

.field public static final CLEAN_FAX_DATA_VALUE_UNCLEAN:I = 0x2

.field public static final CODING_METHODS_VALUE_T4_1D:I = 0x2

.field public static final CODING_METHODS_VALUE_T4_2D:I = 0x4

.field public static final CODING_METHODS_VALUE_T6:I = 0x8

.field public static final CODING_METHODS_VALUE_T81:I = 0x20

.field public static final CODING_METHODS_VALUE_T82_T43:I = 0x40

.field public static final CODING_METHODS_VALUE_T82_T85:I = 0x10

.field public static final FAX_PROFILE_VALUE_EXTENDED_B_AND_W_LOSSLESS_F:I = 0x2

.field public static final FAX_PROFILE_VALUE_LOSSLESS_COLOR_AND_GRAYSCALE_L:I = 0x5

.field public static final FAX_PROFILE_VALUE_LOSSLESS_JBIG_B_AND_W_J:I = 0x3

.field public static final FAX_PROFILE_VALUE_LOSSY_COLOR_AND_GRAYSCALE_C:I = 0x4

.field public static final FAX_PROFILE_VALUE_MINIMAL_B_AND_W_LOSSLESS_S:I = 0x1

.field public static final FAX_PROFILE_VALUE_MIXED_RASTER_CONTENT_M:I = 0x6

.field public static final FAX_PROFILE_VALUE_UNKNOWN:I = 0x0

.field public static final PROFILE_TYPE_VALUE_GROUP_3_FAX:I = 0x1

.field public static final PROFILE_TYPE_VALUE_UNSPECIFIED:I

.field public static final TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

.field public static final TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "BadFaxLines"

    const/16 v2, 0x146

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "CleanFaxData"

    const/16 v2, 0x147

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "ConsecutiveBadFaxLines"

    const/16 v2, 0x148

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const-string v1, "GlobalParametersIFD"

    const/16 v2, 0x190

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "ProfileType"

    const/16 v2, 0x191

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "FaxProfile"

    const/16 v2, 0x192

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "CodingMethods"

    const/16 v2, 0x193

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "VersionYear"

    const/16 v2, 0x194

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v7, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "ModeNumber"

    const/16 v2, 0x195

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "Decode"

    const/16 v2, 0x1b1

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "DefaultImageColor"

    const/16 v2, 0x1b2

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "StripRowCounts"

    const/16 v2, 0x22f

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "ImageLayer"

    const v2, 0x87ac

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v0, 0xd

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->ALL_RFC_2301_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
