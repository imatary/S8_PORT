.class public interface abstract Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;
.super Ljava/lang/Object;
.source "DCSelectItemTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectionListener"
.end annotation


# virtual methods
.method public abstract addItemToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z
.end method

.method public abstract getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.end method

.method public abstract isMaxCountSelectedInPickerMode()Z
.end method

.method public varargs abstract onEventHandleItemClick([Ljava/lang/Object;)Z
.end method

.method public abstract startDetailView(II)V
.end method

.method public abstract startPhotoSplitView(I)V
.end method
