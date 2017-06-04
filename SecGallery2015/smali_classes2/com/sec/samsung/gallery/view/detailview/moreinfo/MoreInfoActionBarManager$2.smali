.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;
.super Ljava/lang/Object;
.source "MoreInfoActionBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->setDisplayOptions(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

.field final synthetic val$displayHomeAsUp:Z

.field final synthetic val$manager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

.field final synthetic val$showTitle:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;ZZLcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$displayHomeAsUp:Z

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$showTitle:Z

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$manager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$displayHomeAsUp:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$showTitle:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$manager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$manager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;->val$displayHomeAsUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    return-void
.end method
