.class public final Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;
.super Ljava/lang/Object;
.source "GeoTiffTagConstants.java"


# static fields
.field public static final ALL_GEO_TIFF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, -0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "ModelPixelScaleTag"

    const v2, 0x830e

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "IntergraphMatrixTag"

    const v2, 0x8480

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "ModelTiepointTag"

    const v2, 0x8482

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "ModelTransformationTag"

    const v2, 0x85d8

    const/16 v3, 0x10

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "GeoKeyDirectoryTag"

    const v2, 0x87af

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "GeoDoubleParamsTag"

    const v2, 0x87b0

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "GeoAsciiParamsTag"

    const v2, 0x87b1

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->ALL_GEO_TIFF_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
