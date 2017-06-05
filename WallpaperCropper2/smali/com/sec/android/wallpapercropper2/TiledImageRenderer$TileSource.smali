.class public interface abstract Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileSource"
.end annotation


# virtual methods
.method public abstract freePreview(Z)V
.end method

.method public abstract getImageHeight()I
.end method

.method public abstract getImageWidth()I
.end method

.method public abstract getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;
.end method

.method public abstract getRotation()I
.end method

.method public abstract getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract getTileSize()I
.end method
