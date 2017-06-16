.class public interface abstract Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;
.super Ljava/lang/Object;
.source "CollageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollageListener"
.end annotation


# virtual methods
.method public abstract getScreenHeight()I
.end method

.method public abstract getScreenWidth()I
.end method

.method public abstract onAnimating(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onBackgroundUpdated()V
.end method

.method public abstract onDLFinished(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onDLInit(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onDimensionsUpdated()V
.end method

.method public abstract onDimensionsUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V
.end method

.method public abstract onDragEnd()V
.end method

.method public abstract onDragMove(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onDragStart(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onImageMoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Landroid/graphics/RectF;Z)V
.end method

.method public abstract onImageUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V
.end method

.method public abstract onItemAdded(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onItemRemoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onItemsResized([Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onItemsSwapped(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
.end method

.method public abstract onMarginUpdated(F)V
.end method

.method public abstract onRoundnessUpdated(F)V
.end method

.method public abstract onSelectionUpdated()V
.end method

.method public abstract requestRender()V
.end method
