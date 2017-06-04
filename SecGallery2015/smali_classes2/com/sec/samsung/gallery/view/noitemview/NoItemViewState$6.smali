.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;
.super Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;
.source "NoItemViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNotEmpty:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isNotEmpty(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->isNotEmpty(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->mNotEmpty:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->mNotEmpty:Z

    return v0
.end method

.method protected onMediaNotEmpty()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNoItemActionBarForNormal:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNoItemActionBarForNormal:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$2800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->isPick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->mNotEmpty:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$302(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startPreviousViewState()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    :cond_1
    return-void
.end method
