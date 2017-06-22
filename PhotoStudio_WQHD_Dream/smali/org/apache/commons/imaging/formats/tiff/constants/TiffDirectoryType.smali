.class public final enum Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
.super Ljava/lang/Enum;
.source "TiffDirectoryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;


# instance fields
.field public final directoryType:I

.field private final isImageDirectory:Z

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v1, "TIFF_DIRECTORY_IFD0"

    const-string v5, "IFD0"

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "TIFF_DIRECTORY_IFD1"

    const-string v9, "IFD1"

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "TIFF_DIRECTORY_IFD2"

    const-string v9, "IFD2"

    move v6, v10

    move v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "TIFF_DIRECTORY_IFD3"

    const-string v9, "IFD3"

    move v6, v11

    move v7, v3

    move v8, v11

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "EXIF_DIRECTORY_INTEROP_IFD"

    const/4 v8, -0x4

    const-string v9, "Interop IFD"

    move v6, v12

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "EXIF_DIRECTORY_MAKER_NOTES"

    const/4 v6, 0x5

    const/4 v8, -0x5

    const-string v9, "Maker Notes"

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "EXIF_DIRECTORY_EXIF_IFD"

    const/4 v6, 0x6

    const/4 v8, -0x2

    const-string v9, "Exif IFD"

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "EXIF_DIRECTORY_GPS"

    const/4 v6, 0x7

    const/4 v8, -0x3

    const-string v9, "GPS IFD"

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory:Z

    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getExifDirectoryType(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .locals 5

    invoke-static {}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->values()[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object v0
.end method


# virtual methods
.method public isImageDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory:Z

    return v0
.end method
