.class Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;
.super Ljava/lang/Object;
.source "StartCategoryTagCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestEditCategory(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

.field final synthetic val$clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field final synthetic val$editType:Ljava/lang/String;

.field final synthetic val$parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field final synthetic val$selectedPaths:Ljava/util/ArrayList;

.field final synthetic val$uriList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$editType:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$selectedPaths:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$uriList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$editType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->makeStringForType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$editType:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$selectedPaths:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->val$uriList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;-><init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

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

    :cond_2
    invoke-static {p1}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->makeStringForType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
