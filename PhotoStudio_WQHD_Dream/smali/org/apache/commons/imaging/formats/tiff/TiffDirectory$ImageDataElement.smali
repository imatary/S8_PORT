.class public final Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;
.super Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.source "TiffDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageDataElement"
.end annotation


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ImageDataElement"

    goto :goto_0
.end method
