.class Lcom/sec/samsung/gallery/view/allview/AllViewState$14;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectItem(II)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1900(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6004"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->startDetailViewInUIThread(II)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2200(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    goto :goto_0
.end method
