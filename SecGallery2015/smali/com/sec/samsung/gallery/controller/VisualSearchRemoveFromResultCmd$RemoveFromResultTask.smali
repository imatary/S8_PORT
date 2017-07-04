.class Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;
.super Landroid/os/AsyncTask;
.source "VisualSearchRemoveFromResultCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveFromResultTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mCategoryName:Ljava/lang/String;

.field private mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mPeronName:Ljava/lang/String;

.field private final mRemoveFrom:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

.field private mSelectedMediaList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCategoryName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mPeronName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mRemoveFrom:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$1;->$SwitchMap$com$sec$samsung$gallery$controller$VisualSearchRemoveFromResultCmd$RemoveFrom:[I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mRemoveFrom:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "VSRemoveFromResultCmd"

    const-string/jumbo v4, "Bad remove from for selection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "image_id"

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mPeronName:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string/jumbo v2, "group_id"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ? AND pos_ratio = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "media_id"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "person_id"

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "_id"

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "user_tag_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "uri"

    goto :goto_3

    :pswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v1, "_id"

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "scene_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "uri"

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectionArg(Lcom/sec/android/gallery3d/data/MediaItem;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$1;->$SwitchMap$com$sec$samsung$gallery$controller$VisualSearchRemoveFromResultCmd$RemoveFrom:[I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mRemoveFrom:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "VSRemoveFromResultCmd"

    const-string/jumbo v4, "Bad remove from for selection arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :pswitch_0
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/SearchMediaItem;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/sec/android/gallery3d/data/SearchMediaItem;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/data/SearchMediaItem;->getPosRatio()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCategoryName:Ljava/lang/String;

    aput-object v3, v1, v6

    aput-object v0, v1, v7

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "VSRemoveFromResultCmd"

    const-string/jumbo v4, "posRatio is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "VSRemoveFromResultCmd"

    const-string/jumbo v4, "obj is not search media item"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-array v1, v7, [Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCategoryName:Ljava/lang/String;

    aput-object v3, v1, v6

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-array v1, v7, [Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCategoryName:Ljava/lang/String;

    aput-object v3, v1, v6

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUri()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$1;->$SwitchMap$com$sec$samsung$gallery$controller$VisualSearchRemoveFromResultCmd$RemoveFrom:[I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mRemoveFrom:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "VSRemoveFromResultCmd"

    const-string/jumbo v2, "Bad remove from uri"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideProgressDialog()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "VSRemoveFromResultCmd"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
.end method

.method private showProgressDialog(I)V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0356

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask$1;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask$1;-><init>(Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v5, "VSRemoveFromResultCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can not remove cause of wrong selection or uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mRemoveFrom:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_1
    const-string/jumbo v5, "VSRemoveFromResultCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Remove items from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " category"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mSelectedMediaList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v5, "VSRemoveFromResultCmd"

    const-string/jumbo v6, "Stop by cancelled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_3
    instance-of v6, v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_2

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->getSelectionArg(Lcom/sec/android/gallery3d/data/MediaItem;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v6, "VSRemoveFromResultCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can not remove cause of wrong selectionArg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mRemoveFrom:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6, v10, v11, v9}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCustomProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v10, v11, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->hideProgressDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a0082

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->hideProgressDialog()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "VSRemoveFromResultCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " items are removed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VSRemoveFromResultCmd"

    const-string/jumbo v1, "Nothing deleted."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mSelectedMediaList:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mSelectedMediaList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mSelectedMediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "VSRemoveFromResultCmd"

    const-string/jumbo v1, "Unable to remove selected items from result. Nothing selected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->mSelectedMediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->showProgressDialog(I)V

    goto :goto_0
.end method
