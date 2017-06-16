.class Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;
.super Ljava/lang/Object;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;

.field final synthetic val$pieces:Ljava/util/List;

.field final synthetic val$segmentPieces:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;->this$0:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;->val$pieces:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;->val$segmentPieces:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;->val$pieces:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;-><init>([B[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-direct {v0, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;->val$pieces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;->val$segmentPieces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method
