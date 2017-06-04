.class Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;
.super Ljava/lang/Object;
.source "GifCropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/crop/GifCropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AGifFrame"
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final duration:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;->duration:I

    return-void
.end method
