.class Lcom/sec/samsung/gallery/view/allview/AllViewState$10;
.super Ljava/lang/Thread;
.source "AllViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;->handleBackgroundDeletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_2

    move-object v3, v4

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v6, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v6, :cond_3

    instance-of v6, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-eqz v6, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v6, v3}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$3400(Lcom/sec/samsung/gallery/view/allview/AllViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$3500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    goto :goto_0
.end method
