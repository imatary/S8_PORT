.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$2;
.super Ljava/lang/Object;
.source "MoreInfoItemTextCategoryAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->hideDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

.field final synthetic val$background:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$2;->val$background:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$2;->val$background:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->notifyDirty()V

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
