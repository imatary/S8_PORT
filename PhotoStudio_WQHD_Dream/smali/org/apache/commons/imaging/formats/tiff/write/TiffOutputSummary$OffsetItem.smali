.class Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;
.super Ljava/lang/Object;
.source "TiffOutputSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffsetItem"
.end annotation


# instance fields
.field public final item:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

.field public final itemOffsetField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;->itemOffsetField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;->item:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    return-void
.end method
