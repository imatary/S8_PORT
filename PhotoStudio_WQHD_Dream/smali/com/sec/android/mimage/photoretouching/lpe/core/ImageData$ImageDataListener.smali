.class public interface abstract Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
.super Ljava/lang/Object;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageDataListener"
.end annotation


# virtual methods
.method public abstract clearSelectionBorder()V
.end method

.method public abstract displayBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
.end method

.method public abstract getLayerId()I
.end method

.method public abstract getLayerManager()Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
.end method

.method public abstract getPreviewOutputBuffer()[I
.end method

.method public abstract getServiceId()I
.end method

.method public abstract getStateManager()Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
.end method

.method public abstract onEffectThumbsUpdated()V
.end method

.method public abstract onIconUpdated(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onOriginalUpdated()V
.end method

.method public abstract onPreviewUpdate(II)V
.end method

.method public abstract onPreviewUpdated()V
.end method
