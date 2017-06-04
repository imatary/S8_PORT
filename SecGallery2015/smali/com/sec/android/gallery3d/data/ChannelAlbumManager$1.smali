.class Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;
.super Ljava/lang/Object;
.source "ChannelAlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->handleCreateChannelThread(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fromDC:Z

.field final synthetic val$selectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$selectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$albumName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$fromDC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v6, 0x0

    const v12, 0x7f0a0182

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$selectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectedItemList(Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$000(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$albumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$albumName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$albumName:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$fromDC:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$context:Landroid/content/Context;

    move v5, v3

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->handleDCCreateStory(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$400(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->createNewChannelAlbumName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$100(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getChannelAlbumMap()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$200(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    const/4 v9, 0x0

    :goto_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->isDuplicated(Ljava/util/ArrayList;Ljava/lang/String;)I
    invoke-static {v0, v7, v8}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$300(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_3

    add-int/2addr v9, v10

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_1
    move-object v8, v4

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v4, v8

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$1;->val$context:Landroid/content/Context;

    move v5, v3

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->showCreateEventDialog(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$500(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_1
.end method
