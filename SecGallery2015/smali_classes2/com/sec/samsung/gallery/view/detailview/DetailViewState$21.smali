.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$21;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$21;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$21;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mLastSystemUiVis:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v1

    xor-int v0, v1, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$21;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mLastSystemUiVis:I
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27102(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$21;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$21;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$21;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBars()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_1
    return-void
.end method
