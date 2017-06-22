.class public Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;
.source "App14Segment.java"


# static fields
.field public static final ADOBE_COLOR_TRANSFORM_UNKNOWN:I = 0x0

.field public static final ADOBE_COLOR_TRANSFORM_YCCK:I = 0x2

.field public static final ADOBE_COLOR_TRANSFORM_YCbCr:I = 0x1

.field private static final ADOBE_PREFIX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Adobe"

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->ADOBE_PREFIX:[B

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getAdobeColorTransform()I
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->getSegmentData(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isAdobeJpegSegment()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->getSegmentData()[B

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->ADOBE_PREFIX:[B

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([B[B)Z

    move-result v0

    return v0
.end method
