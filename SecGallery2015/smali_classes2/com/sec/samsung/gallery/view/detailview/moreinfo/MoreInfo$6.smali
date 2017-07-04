.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;
.super Ljava/lang/Object;
.source "MoreInfo.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->switchViewMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setMode(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050029

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1201e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

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
