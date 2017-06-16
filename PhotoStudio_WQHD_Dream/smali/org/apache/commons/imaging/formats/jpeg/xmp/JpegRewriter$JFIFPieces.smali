.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
.super Ljava/lang/Object;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JFIFPieces"
.end annotation


# instance fields
.field public final pieces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation
.end field

.field public final segmentPieces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->segmentPieces:Ljava/util/List;

    return-void
.end method
