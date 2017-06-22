.class Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->hasIptcSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 0

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v2, 0xffd9

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const v2, 0xffed

    if-ne p1, v2, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {v2, p5}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->isPhotoshopJpegSegment([B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;->val$result:[Z

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
