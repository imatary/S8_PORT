.class Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JFIFPieceSegment"
.end annotation


# instance fields
.field public final marker:I

.field public final markerBytes:[B

.field public final markerLengthBytes:[B

.field public final segmentData:[B


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;-><init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;)V

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->marker:I

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->markerBytes:[B

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->markerLengthBytes:[B

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->segmentData:[B

    return-void
.end method


# virtual methods
.method protected write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->markerBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->markerLengthBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
