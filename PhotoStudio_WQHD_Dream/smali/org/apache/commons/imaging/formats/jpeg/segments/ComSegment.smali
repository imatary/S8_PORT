.class public Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;
.source "ComSegment.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public getComment()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;->getSegmentData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;->getSegmentDataAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
