.class Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;
.super Ljava/lang/Object;
.source "SConnectManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface$QuickConnectDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/sconnect/SConnectManager;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected()V
    .locals 14

    const/16 v13, 0x1f4

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string/jumbo v9, "SConnectManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mListener is called, class name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    # getter for: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v11}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    # getter for: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalItemList()Ljava/util/LinkedList;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v9, v4, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    iget-object v10, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    # getter for: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    # invokes: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->startSConnect(Landroid/app/Activity;Ljava/util/ArrayList;)V
    invoke-static {v9, v10, v8}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$100(Lcom/sec/android/gallery3d/sconnect/SConnectManager;Landroid/app/Activity;Ljava/util/ArrayList;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    iget-object v9, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    # getter for: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    const v10, 0x7f0a049e

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v13, :cond_5

    iget-object v9, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    # getter for: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0253

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    # getter for: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-nez v2, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    iget-object v10, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;->this$0:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    # getter for: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    # invokes: Lcom/sec/android/gallery3d/sconnect/SConnectManager;->startSConnect(Landroid/app/Activity;Ljava/util/ArrayList;)V
    invoke-static {v9, v10, v8}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->access$100(Lcom/sec/android/gallery3d/sconnect/SConnectManager;Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_2
.end method
