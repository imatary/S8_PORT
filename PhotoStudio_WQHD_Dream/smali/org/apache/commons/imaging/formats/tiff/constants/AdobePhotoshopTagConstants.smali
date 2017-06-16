.class public final Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;
.super Ljava/lang/Object;
.source "AdobePhotoshopTagConstants.java"


# static fields
.field public static final ALL_ADOBE_PHOTOSHOP_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_IMAGE_SOURCE_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

.field public static final EXIF_TAG_JPEGTABLES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const-string v1, "JPEGTables"

    const/16 v2, 0x15b

    const/4 v3, -0x1

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->EXIF_TAG_JPEGTABLES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const-string v1, "ImageSourceData"

    const v2, 0x935c

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->EXIF_TAG_IMAGE_SOURCE_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->EXIF_TAG_JPEGTABLES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->EXIF_TAG_IMAGE_SOURCE_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->ALL_ADOBE_PHOTOSHOP_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
