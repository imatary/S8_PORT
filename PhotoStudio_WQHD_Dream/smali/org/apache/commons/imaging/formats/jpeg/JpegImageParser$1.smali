.class Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$markers:[I

.field final synthetic val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$result:Ljava/util/List;

.field final synthetic val$returnAfterFirst:Z

.field final synthetic val$sofnSegments:[I


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[ILjava/util/List;Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[IZ)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$markers:[I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$sofnSegments:[I

    iput-boolean p6, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v2, 0xffd9

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$markers:[I

    # invokes: Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->keepMarker(I[I)Z
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->access$000(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const v2, 0xffed

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    invoke-direct {v3, v4, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const v2, 0xffee

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;

    invoke-direct {v3, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;-><init>(I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const v2, 0xffe2

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-direct {v3, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;-><init>(I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const v2, 0xffe0

    if-ne p1, v2, :cond_7

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;-><init>(I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$sofnSegments:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_8

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const v2, 0xffdb

    if-ne p1, v2, :cond_9

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const v2, 0xffe1

    if-lt p1, v2, :cond_a

    const v2, 0xffef

    if-gt p1, v2, :cond_a

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;-><init>(I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    const v2, 0xfffe

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;-><init>(I[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
