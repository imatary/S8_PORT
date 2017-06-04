.class public interface abstract Lcom/sec/samsung/gallery/view/detailview/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/PhotoView$Model;


# virtual methods
.method public abstract changeSource(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getCurrentBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
.end method

.method public abstract getNextDirection()I
.end method

.method public abstract getScreenNailBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onAgifPlayRequests()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCurrentPhoto(Lcom/sec/android/gallery3d/data/Path;I)V
.end method

.method public abstract setPresentation(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView;)V
.end method

.method public abstract updateBrokenImage(Landroid/graphics/Bitmap;)V
.end method
