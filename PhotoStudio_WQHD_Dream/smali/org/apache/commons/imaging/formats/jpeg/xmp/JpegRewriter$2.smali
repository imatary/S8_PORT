.class final Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$2;
.super Ljava/lang/Object;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isXmpSegment()Z

    move-result v0

    return v0
.end method
