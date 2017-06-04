.class Lcom/sec/android/gallery3d/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/exif/ExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcom/sec/android/gallery3d/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/exif/ExifTag;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/exif/ExifModifier$TagOffset;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    iput p2, p0, Lcom/sec/android/gallery3d/exif/ExifModifier$TagOffset;->mOffset:I

    return-void
.end method
