.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;
.super Ljava/lang/Object;
.source "MoreInfo.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->startDestroyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;->val$parent:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

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
