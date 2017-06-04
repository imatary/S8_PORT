.class Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;
.super Ljava/lang/Object;
.source "StartCategoryTagCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestRemoveConfirmTag(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

.field final synthetic val$action:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field final synthetic val$clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field final synthetic val$parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field final synthetic val$removeType:Ljava/lang/String;

.field final synthetic val$selectedPaths:Ljava/util/ArrayList;

.field final synthetic val$uriList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$selectedPaths:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$uriList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$removeType:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$action:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$selectedPaths:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$uriList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$removeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->val$action:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;-><init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
