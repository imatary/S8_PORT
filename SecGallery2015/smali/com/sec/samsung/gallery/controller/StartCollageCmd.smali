.class public Lcom/sec/samsung/gallery/controller/StartCollageCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartCollageCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;
    }
.end annotation


# static fields
.field public static final COLLAGE_BUCKET_ID:I

.field private static final TAG:Ljava/lang/String; = "StartCollageCmd"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COLLAGE_ALBUM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->COLLAGE_BUCKET_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private showCollageStudioDownloadDialog()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->context:Landroid/content/Context;

    const v2, 0x7f0a02d5

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/common/CollageStartDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/CollageStartDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CollageStartDialog;->showDialog()V

    goto :goto_0
.end method

.method private startCollageMaker(Landroid/content/Context;)V
    .locals 12

    move-object v10, p1

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.sec.android.mimage.photoretouching.multigrid"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "selectedItems"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v10, "selectedCount"

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAppEnterVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-eqz v10, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f050025

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->showCollageStudioDownloadDialog()V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v10, "StartCollageCmd"

    const-string/jumbo v11, "There is problem in startCollageMaker"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startCollageMakerForDetailView(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.mimage.photoretouching.multigrid"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "selectedItems"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v3, "selectedCount"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->makeIntentForDualScreenMode(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->showCollageStudioDownloadDialog()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "StartCollageCmd"

    const-string/jumbo v4, "There is problem in startCollageMakerForDetailView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startCollageMakerForGalleryNotification(Landroid/content/Context;Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;ILjava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_2

    move-object v10, p1

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    new-instance v2, Ljava/util/LinkedList;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p4

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "com.sec.android.mimage.photoretouching.multigrid"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "selectedItems"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v10, "selectedCount"

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    sget-object v10, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAIL_PREVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    if-ne p2, v10, :cond_5

    const-string/jumbo v10, "layout_number"

    invoke-virtual {v6, v10, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v10, 0x30f

    invoke-virtual {p1, v6, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->showCollageStudioDownloadDialog()V

    goto :goto_0

    :cond_5
    :try_start_1
    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v10, 0xf01

    invoke-virtual {p1, v6, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v10, "StartCollageCmd"

    const-string/jumbo v11, "There is problem in startCollageMaker"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startCollageViewer(Landroid/net/Uri;)V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.collage"

    const-string/jumbo v3, "com.sec.android.app.collage.CollageView"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v7, 0x2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Landroid/content/Context;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->context:Landroid/content/Context;

    const/4 v5, 0x1

    aget-object v0, v3, v5

    check-cast v0, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAIL_PREVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    if-ne v0, v5, :cond_0

    aget-object v5, v3, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x3

    aget-object v1, v3, v5

    check-cast v1, Ljava/util/ArrayList;

    :cond_0
    sget-object v5, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    if-ne v0, v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->context:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->startCollageMaker(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v5, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_VIEWER:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    if-ne v0, v5, :cond_3

    aget-object v4, v3, v7

    check-cast v4, Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->startCollageViewer(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAILVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    if-ne v0, v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->context:Landroid/content/Context;

    const-string/jumbo v6, "GECS"

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    aget-object v4, v3, v7

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->context:Landroid/content/Context;

    invoke-direct {p0, v5, v4}, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->startCollageMakerForDetailView(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_EVENT_NOTIFICATION:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    if-eq v0, v5, :cond_5

    sget-object v5, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAIL_PREVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    if-ne v0, v5, :cond_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->context:Landroid/content/Context;

    invoke-direct {p0, v5, v0, v2, v1}, Lcom/sec/samsung/gallery/controller/StartCollageCmd;->startCollageMakerForGalleryNotification(Landroid/content/Context;Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;ILjava/util/ArrayList;)V

    goto :goto_0
.end method
