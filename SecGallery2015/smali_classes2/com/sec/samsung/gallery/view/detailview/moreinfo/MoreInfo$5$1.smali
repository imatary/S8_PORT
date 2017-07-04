.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5$1;
.super Ljava/lang/Object;
.source "MoreInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;->val$parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
