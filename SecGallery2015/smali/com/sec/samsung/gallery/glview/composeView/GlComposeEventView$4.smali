.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;
.super Ljava/lang/Object;
.source "GlComposeEventView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final r:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->r:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getAlbumCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    return v0
.end method

.method public getColumn()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupLineCount:I

    return v0
.end method

.method public getFirstItem()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getItemIndex(II)I
    .locals 3

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v2, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getSearchObj(II)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :cond_0
    return v0
.end method

.method public getItemRealRect(I)Landroid/graphics/Rect;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->r:Landroid/graphics/Rect;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemRect(I)Landroid/graphics/Rect;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastItem()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public selectComplete(Z)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->playHaptic()V

    :cond_0
    return-void
.end method

.method public selectItem(IZ)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->touch()V

    goto :goto_0
.end method
