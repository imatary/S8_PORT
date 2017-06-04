.class public Lcom/sec/samsung/gallery/lib/se/SeBitmap;
.super Ljava/lang/Object;
.source "SeBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGLCompressed(Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->semIsGLCompressed()Z

    move-result v0

    return v0
.end method
