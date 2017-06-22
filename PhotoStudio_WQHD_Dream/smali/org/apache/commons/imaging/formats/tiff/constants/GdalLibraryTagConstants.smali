.class public final Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;
.super Ljava/lang/Object;
.source "GdalLibraryTagConstants.java"


# static fields
.field public static final ALL_GDAL_LIBRARY_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_GDAL_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_GDAL_NO_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "GDALMetadata"

    const v2, 0xa480

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "GDALNoData"

    const v2, 0xa481

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_NO_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_NO_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->ALL_GDAL_LIBRARY_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
