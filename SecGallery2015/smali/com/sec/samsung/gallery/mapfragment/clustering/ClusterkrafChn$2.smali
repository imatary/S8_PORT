.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;
.super Ljava/lang/Object;
.source "ClusterkrafChn.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2402(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2502(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
