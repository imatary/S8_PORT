.class Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$2;
.super Ljava/lang/Object;
.source "TiffOutputDirectory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->sortFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$2;->this$0:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$2;->compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)I
    .locals 2

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    iget v1, p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    iget v1, p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSortHint()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSortHint()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
