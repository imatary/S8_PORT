.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;
.super Ljava/lang/Object;
.source "GlComposeAlbumView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->changeIndex(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Z)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;I)V

    :cond_0
    return-void
.end method
