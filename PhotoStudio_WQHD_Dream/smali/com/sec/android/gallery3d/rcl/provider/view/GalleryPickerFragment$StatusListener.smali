.class public interface abstract Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;
.super Ljava/lang/Object;
.source "GalleryPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation


# virtual methods
.method public abstract onGalleryButtonIsClicked(Ljava/lang/String;)V
.end method

.method public abstract onItemDeselected(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/net/Uri;)V
.end method

.method public abstract onItemSelected(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/net/Uri;)V
.end method

.method public abstract onMultiDeselectedItemList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMultiSelectedItemList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResult(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSelectedItemCount(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;I)V
.end method
