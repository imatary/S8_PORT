.class public interface abstract Lcom/sec/android/secvision/segmentation/ISegmenter;
.super Ljava/lang/Object;
.source "ISegmenter.java"


# virtual methods
.method public abstract canRedo()Z
.end method

.method public abstract canUndo()Z
.end method

.method public abstract cancelSegmentation()V
.end method

.method public abstract deInitialize()V
.end method

.method public abstract getResultImageMask()Landroid/graphics/Bitmap;
.end method

.method public abstract getResultImageSegment()Landroid/graphics/Bitmap;
.end method

.method public abstract getResultImageSegment(I)Landroid/graphics/Bitmap;
.end method

.method public abstract initialize(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract redo()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract segment(Lcom/sec/android/secvision/segmentation/ScribblePath;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/secvision/segmentation/ScribblePath;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract undo()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end method
