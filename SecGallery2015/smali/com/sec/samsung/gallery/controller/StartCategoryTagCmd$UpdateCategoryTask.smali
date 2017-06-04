.class Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;
.super Landroid/os/AsyncTask;
.source "StartCategoryTagCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCategoryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHANGE_CATEGORY:I = 0x2

.field private static final REMOVE_FROM_CATEGORY:I = 0x1


# instance fields
.field private action:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field private final clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private editType:Ljava/lang/String;

.field private final mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field private newType:Ljava/lang/String;

.field private final parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private removeType:Ljava/lang/String;

.field private final selectedPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

.field private final updateCategoryType:I

.field private final uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->updateCategoryType:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->selectedPaths:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->removeType:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->action:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->updateCategoryType:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->editType:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->newType:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->selectedPaths:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->updateCategoryType:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$200(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->removeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteCategoryType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$200(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->removeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->deleteCategoryType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v0, :cond_3

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->removeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->removeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->deleteCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;

    if-eqz v0, :cond_5

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->removeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->removeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->deleteCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "StartCategoryTagCmd"

    const-string/jumbo v1, "remove from category clusterAlbumSet cast error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->editType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->newType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->changeCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->uriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->editType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->newType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->chanageCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "StartCategoryTagCmd"

    const-string/jumbo v2, "Error : remove from category failed by DCM !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->updateCategoryType:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestUpdateScreenByCategoryChange(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->selectedPaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2, v4, v6, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateOperation(Ljava/util/ArrayList;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpdateRequiredForRemoveTag(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->action:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->action:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    if-ne v1, v2, :cond_2

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->clusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->selectedPaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->parentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2, v4, v6, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateOperation(Ljava/util/ArrayList;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0091

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$200(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->this$0:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->access$200(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a0340

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
