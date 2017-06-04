.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hoverClick(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v3, p1, p2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setScreenNailImage(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)V

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->setStartAnimationNow(Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    invoke-interface {v2, v0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;->onHoverClick(IILjava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
