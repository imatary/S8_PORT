.class public final Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;
.super Ljava/lang/Object;
.source "OceScanjobTagConstants.java"


# static fields
.field public static final ALL_OCE_SCANJOB_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_OCE_APPLICATION_SELECTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_OCE_IDENTIFICATION_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_OCE_IMAGE_LOGIC_CHARACTERISTICS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_OCE_SCANJOB_DESCRIPTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "Oce Scanjob Description"

    const v2, 0xc427

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_SCANJOB_DESCRIPTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "Oce Application Selector"

    const v2, 0xc428

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_APPLICATION_SELECTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "Oce Identification Number"

    const v2, 0xc429

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_IDENTIFICATION_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "Oce ImageLogic Characteristics"

    const v2, 0xc42a

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_IMAGE_LOGIC_CHARACTERISTICS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_SCANJOB_DESCRIPTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_APPLICATION_SELECTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_IDENTIFICATION_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_IMAGE_LOGIC_CHARACTERISTICS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->ALL_OCE_SCANJOB_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
