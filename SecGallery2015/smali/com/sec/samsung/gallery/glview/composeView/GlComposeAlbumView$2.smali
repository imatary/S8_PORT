.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->changeIndex(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningChangeGroupAnim:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->onDragEnd()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningChangeGroupAnim:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://force_reload"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->updateListAlbumDivider()V

    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method
