.class public interface abstract Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileSource"
.end annotation


# virtual methods
.method public abstract getImageHeight()I
.end method

.method public abstract getImageWidth()I
.end method

.method public abstract getLevelCount()I
.end method

.method public abstract getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
.end method

.method public abstract getTile(IIII)Landroid/graphics/Bitmap;
.end method
