.class Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;
.super Ljava/lang/Object;
.source "GlMoreAlbumObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$102(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Z

    move-result v2

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->updateView(Z)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Z

    move-result v2

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->updateButton(Z)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListAlbumDivider:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->resetNewPosition()V

    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->resetMoreAlbumPosition()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "show_more_albums"

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content://force_reload"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetPosition()V

    goto :goto_3
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method
