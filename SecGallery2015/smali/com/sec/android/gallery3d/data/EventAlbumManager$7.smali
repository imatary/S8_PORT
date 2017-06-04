.class Lcom/sec/android/gallery3d/data/EventAlbumManager$7;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;->prepareCreateEventDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$selectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;Lcom/sec/android/gallery3d/ui/SelectionManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->val$selectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const v13, 0x7f0a0182

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->val$selectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    # invokes: Lcom/sec/android/gallery3d/data/EventAlbumManager;->getSelectedItemList(Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;
    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$1000(Lcom/sec/android/gallery3d/data/EventAlbumManager;Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->val$context:Landroid/content/Context;

    # invokes: Lcom/sec/android/gallery3d/data/EventAlbumManager;->createNewEventAlbumName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    invoke-static {v8, v9, v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$1100(Lcom/sec/android/gallery3d/data/EventAlbumManager;Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/local/event/all/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventAlbumMap()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    # invokes: Lcom/sec/android/gallery3d/data/EventAlbumManager;->isDuplicated(Ljava/util/ArrayList;Ljava/lang/String;)I
    invoke-static {v8, v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$1200(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/2addr v3, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/local/event/all/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_0
    move-object v2, v6

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v6, v2

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;->val$context:Landroid/content/Context;

    # invokes: Lcom/sec/android/gallery3d/data/EventAlbumManager;->showCreateEventDialog(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    invoke-static {v8, v9, v5, v1, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$1300(Lcom/sec/android/gallery3d/data/EventAlbumManager;Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method
