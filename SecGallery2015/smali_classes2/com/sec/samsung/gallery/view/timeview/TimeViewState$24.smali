.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    return-void
.end method

.method public getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method public isMaxCountSelectedInPickerMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$7000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs onEventHandleItemClick([Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->onItemClick(II)V

    return v3
.end method

.method public startDetailView(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(II)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$7200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V

    return-void
.end method

.method public startPhotoSplitView(I)V
    .locals 0

    return-void
.end method
