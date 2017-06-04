.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2$1;
.super Ljava/lang/Object;
.source "MoreInfoItemDetails.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2$1;->this$2:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2$1;->this$2:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2$1;->this$2:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$2;->val$itemUrlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->processDeleteUrl(Landroid/widget/FrameLayout;)V

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
