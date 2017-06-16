.class public final Lorg/apache/commons/imaging/Imaging;
.super Ljava/lang/Object;
.source "Imaging.java"


# static fields
.field private static final MAGIC_NUMBERS_BMP:[I

.field private static final MAGIC_NUMBERS_DCX:[I

.field private static final MAGIC_NUMBERS_GIF:[I

.field private static final MAGIC_NUMBERS_ICNS:[I

.field private static final MAGIC_NUMBERS_JBIG2_1:[I

.field private static final MAGIC_NUMBERS_JBIG2_2:[I

.field private static final MAGIC_NUMBERS_JPEG:[I

.field private static final MAGIC_NUMBERS_PAM:[I

.field private static final MAGIC_NUMBERS_PBM_A:[I

.field private static final MAGIC_NUMBERS_PBM_B:[I

.field private static final MAGIC_NUMBERS_PGM_A:[I

.field private static final MAGIC_NUMBERS_PGM_B:[I

.field private static final MAGIC_NUMBERS_PNG:[I

.field private static final MAGIC_NUMBERS_PPM_A:[I

.field private static final MAGIC_NUMBERS_PPM_B:[I

.field private static final MAGIC_NUMBERS_PSD:[I

.field private static final MAGIC_NUMBERS_RGBE:[I

.field private static final MAGIC_NUMBERS_TIFF_INTEL:[I

.field private static final MAGIC_NUMBERS_TIFF_MOTOROLA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_GIF:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PNG:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JPEG:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_BMP:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_MOTOROLA:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_INTEL:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PAM:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PSD:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_A:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_B:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_A:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_B:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_A:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_B:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_1:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_ICNS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_DCX:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_RGBE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x47
        0x49
    .end array-data

    :array_1
    .array-data 4
        0x89
        0x50
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xd8
    .end array-data

    :array_3
    .array-data 4
        0x42
        0x4d
    .end array-data

    :array_4
    .array-data 4
        0x4d
        0x4d
    .end array-data

    :array_5
    .array-data 4
        0x49
        0x49
    .end array-data

    :array_6
    .array-data 4
        0x50
        0x37
    .end array-data

    :array_7
    .array-data 4
        0x38
        0x42
    .end array-data

    :array_8
    .array-data 4
        0x50
        0x31
    .end array-data

    :array_9
    .array-data 4
        0x50
        0x34
    .end array-data

    :array_a
    .array-data 4
        0x50
        0x32
    .end array-data

    :array_b
    .array-data 4
        0x50
        0x35
    .end array-data

    :array_c
    .array-data 4
        0x50
        0x33
    .end array-data

    :array_d
    .array-data 4
        0x50
        0x36
    .end array-data

    :array_e
    .array-data 4
        0x97
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x42
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x69
        0x63
    .end array-data

    :array_11
    .array-data 4
        0xb1
        0x68
    .end array-data

    :array_12
    .array-data 4
        0x23
        0x3f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareBytePair([I[I)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    if-eq v2, v3, :cond_0

    array-length v2, p1

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Byte Pair."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v2, p0, v1

    aget v3, p1, v1

    if-ne v2, v3, :cond_1

    aget v2, p0, v0

    aget v3, p1, v0

    if-ne v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static dumpImageFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/ImageParser;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpImageFile([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->dumpImageFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllBufferedImages(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllBufferedImages(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/ImageParser;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getAllBufferedImages([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/File;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "FILENAME"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FILENAME"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    new-instance v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method private static getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public static getBufferedImage([B)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage([BLjava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatCompliance(Ljava/io/File;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    return-object v0
.end method

.method private static getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/ImageParser;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v1

    return-object v1
.end method

.method public static getFormatCompliance([B)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/File;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method protected static getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Lorg/apache/commons/imaging/icc/IccProfileParser;

    invoke-direct {v2}, Lorg/apache/commons/imaging/icc/IccProfileParser;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v3

    goto :goto_0
.end method

.method public static getICCProfile([B)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/color/ICC_Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfileBytes(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getICCProfileBytes([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes([BLjava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfileBytes([BLjava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/File;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/lang/String;[B)Lorg/apache/commons/imaging/ImageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/lang/String;[BLjava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getImageInfo([B)Lorg/apache/commons/imaging/ImageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo([BLjava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v2

    sget-object v7, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v5

    move-object v0, v5

    array-length v6, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Lorg/apache/commons/imaging/ImageParser;->canAcceptType(Lorg/apache/commons/imaging/ImageFormat;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v5

    move-object v0, v5

    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Lorg/apache/commons/imaging/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v7, Lorg/apache/commons/imaging/ImageReadException;

    const-string v8, "Can\'t parse this format."

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static getImageSize(Ljava/io/File;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v1

    return-object v1
.end method

.method public static getImageSize([B)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/File;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v1

    return-object v1
.end method

.method public static getMetadata([B)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/imaging/Imaging;->getImageParser(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/ImageParser;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getXmpXml([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/Imaging;->getXmpXml([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml([BLjava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/Imaging;->getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessFormat(Ljava/io/File;)Lorg/apache/commons/imaging/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method public static guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    :goto_0
    return-object v12

    :cond_0
    const/4 v11, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v7

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v7, :cond_1

    if-gez v8, :cond_2

    :cond_1
    new-instance v12, Lorg/apache/commons/imaging/ImageReadException;

    const-string v13, "Couldn\'t read magic numbers to guess format."

    invoke-direct {v12, v13}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v12

    :cond_2
    and-int/lit16 v0, v7, 0xff

    and-int/lit16 v1, v8, 0xff

    const/4 v12, 0x2

    :try_start_1
    new-array v4, v12, [I

    const/4 v12, 0x0

    aput v0, v4, v12

    const/4 v12, 0x1

    aput v1, v4, v12

    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_GIF:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    :try_start_2
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PNG:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto :goto_0

    :cond_4
    :try_start_3
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JPEG:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto :goto_0

    :cond_5
    :try_start_4
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_BMP:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_MOTOROLA:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_7
    :try_start_6
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_TIFF_INTEL:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_8
    :try_start_7
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PSD:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_8
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PAM:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_a
    :try_start_9
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_A:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_b
    :try_start_a
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PBM_B:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_c
    :try_start_b
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_A:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_d
    :try_start_c
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PGM_B:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_e
    :try_start_d
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_A:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_f
    :try_start_e
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_PPM_B:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_10
    :try_start_f
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_1:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v9

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v10

    if-ltz v9, :cond_11

    if-gez v10, :cond_12

    :cond_11
    new-instance v12, Lorg/apache/commons/imaging/ImageReadException;

    const-string v13, "Couldn\'t read magic numbers to guess format."

    invoke-direct {v12, v13}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_12
    and-int/lit16 v2, v9, 0xff

    and-int/lit16 v3, v10, 0xff

    const/4 v12, 0x2

    new-array v5, v12, [I

    const/4 v12, 0x0

    aput v2, v5, v12

    const/4 v12, 0x1

    aput v3, v5, v12

    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_JBIG2_2:[I

    invoke-static {v12, v5}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->JBIG2:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_13
    :try_start_10
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_ICNS:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_14

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_14
    :try_start_11
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_DCX:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_15
    :try_start_12
    sget-object v12, Lorg/apache/commons/imaging/Imaging;->MAGIC_NUMBERS_RGBE:[I

    invoke-static {v12, v4}, Lorg/apache/commons/imaging/Imaging;->compareBytePair([I[I)Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v6, 0x1

    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_16
    const/4 v6, 0x1

    :try_start_13
    sget-object v12, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v6, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0
.end method

.method public static guessFormat([B)Lorg/apache/commons/imaging/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->guessFormat(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method public static hasImageFileExtension(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->hasImageFileExtension(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasImageFileExtension(Ljava/lang/String;)Z
    .locals 12

    const/4 v10, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v7

    move-object v0, v7

    array-length v8, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v8, :cond_0

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lorg/apache/commons/imaging/ImageParser;->getAcceptedExtensions()[Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    array-length v9, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_3

    aget-object v2, v1, v4

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/File;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/File;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0, v1, p2, p3}, Lorg/apache/commons/imaging/Imaging;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v3

    :goto_0
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/ImageParser;->getAllImageParsers()[Lorg/apache/commons/imaging/ImageParser;

    move-result-object v4

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v6, "FORMAT"

    invoke-interface {p3, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/ImageParser;->canAcceptType(Lorg/apache/commons/imaging/ImageFormat;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v3

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2, p0, p1, p3}, Lorg/apache/commons/imaging/ImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v6, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static writeImageToBytes(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/imaging/Imaging;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImageFormat;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
