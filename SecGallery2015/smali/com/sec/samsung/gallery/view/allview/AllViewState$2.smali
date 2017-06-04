.class Lcom/sec/samsung/gallery/view/allview/AllViewState$2;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$2;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public browseDone()V
    .locals 2

    const-string/jumbo v0, "AllViewState"

    const-string/jumbo v1, "browseDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$2;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mBrowseStart:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1302(Lcom/sec/samsung/gallery/view/allview/AllViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$2;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->reloadData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$2;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState;->checkMediaAvailability()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    return-void
.end method
