.class public Lcom/sec/samsung/gallery/lib/factory/BitmapWrapper;
.super Ljava/lang/Object;
.source "BitmapWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGLCompressed(Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeBitmap;->isGLCompressed(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method
