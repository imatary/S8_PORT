.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$1;
.super Ljava/lang/Object;
.source "DetailActionBarForBurstShotNormal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->onCreateOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsClicked:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsClicked:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->access$002(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->startActionShare()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V

    goto :goto_0
.end method
