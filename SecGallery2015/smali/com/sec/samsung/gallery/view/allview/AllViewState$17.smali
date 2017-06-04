.class Lcom/sec/samsung/gallery/view/allview/AllViewState$17;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "AllViewState.java"


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mBrowseStart:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "AllViewState"

    const-string/jumbo v2, "flatprovider is not browsed all yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->checkMediaAvailability()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentMediaItemIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4700(Lcom/sec/samsung/gallery/view/allview/AllViewState;)I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentMediaItemIndex:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$4702(Lcom/sec/samsung/gallery/view/allview/AllViewState;I)I

    goto :goto_0
.end method
