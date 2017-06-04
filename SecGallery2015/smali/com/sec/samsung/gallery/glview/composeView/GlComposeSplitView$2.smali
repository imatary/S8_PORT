.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;
.super Ljava/lang/Object;
.source "GlComposeSplitView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v2

    neg-float v0, v2

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFFI)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDecoviewsVisibility(Z)V

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setVisibility(Z)V

    :cond_0
    return-void
.end method
