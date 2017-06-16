.class public final Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;
.super Ljava/lang/Object;
.source "MolecularDynamicsGelTagConstants.java"


# static fields
.field public static final ALL_MOLECULAR_DYNAMICS_GEL_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "MD FileTag"

    const v2, 0x82a5

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "MD ScalePixel"

    const v2, 0x82a6

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "MD ColorTable"

    const v2, 0x82a7

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD LabName"

    const v2, 0x82a8

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD SampleInfo"

    const v2, 0x82a9

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD PrepDate"

    const v2, 0x82aa

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD PrepTime"

    const v2, 0x82ab

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD FileUnits"

    const v2, 0x82ac

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->ALL_MOLECULAR_DYNAMICS_GEL_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
