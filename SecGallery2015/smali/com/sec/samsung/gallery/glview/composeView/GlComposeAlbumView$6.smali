.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 5

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNewAlbumDividerPosition()Lcom/sec/android/gallery3d/glcore/GlPos;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getZ()F

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getY()F

    move-result v1

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method
