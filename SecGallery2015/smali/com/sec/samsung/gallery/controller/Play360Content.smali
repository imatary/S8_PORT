.class public Lcom/sec/samsung/gallery/controller/Play360Content;
.super Ljava/lang/Object;
.source "Play360Content.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;
    }
.end annotation


# static fields
.field private static final MANAGER_360_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.samsunggear360manager"

.field private static final MANAGER_IMAGE_360_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.samsunggear360manager.app.mediaplayer360.imageviewer360.ImagePlayer360Activity"

.field private static final MANAGER_VIDEO_360_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.samsunggear360manager.app.mediaplayer360.videoplayer360.VideoPlayer360Activity"

.field private static final NEW_MANAGER_360_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.gear360manager"

.field private static final NEW_MANAGER_IMAGE_360_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.gear360manager.app.mediaplayer360.imageviewer360.ImagePlayer360Activity"

.field private static final NEW_MANAGER_VIDEO_360_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.gear360manager.app.mediaplayer360.videoplayer360.VideoPlayer360Activity"

.field private static final VIEWER_360_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.gear360viewer"

.field private static final VIEWER_IMAGE_360_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.gear360viewer.imageviewer360.ImagePlayer360Activity"

.field private static final VIEWER_VIDEO_360_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.gear360viewer.videoplayer360.VideoPlayer360Activity"


# instance fields
.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method

.method private create360ManagerAppList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/ImageEditorUtil;->isSamsungAppsAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.gear360manager"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    const-string/jumbo v3, "com.samsung.android.gear360manager"

    const-string/jumbo v4, "com.samsung.android.gear360manager.app.mediaplayer360.videoplayer360.VideoPlayer360Activity"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/Play360Content$1;)V

    new-instance v1, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    const-string/jumbo v3, "com.samsung.android.gear360manager"

    const-string/jumbo v4, "com.samsung.android.gear360manager.app.mediaplayer360.imageviewer360.ImagePlayer360Activity"

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/Play360Content$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    const-string/jumbo v3, "com.samsung.android.samsunggear360manager"

    const-string/jumbo v4, "com.samsung.android.samsunggear360manager.app.mediaplayer360.videoplayer360.VideoPlayer360Activity"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/Play360Content$1;)V

    new-instance v1, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    const-string/jumbo v3, "com.samsung.android.samsunggear360manager"

    const-string/jumbo v4, "com.samsung.android.samsunggear360manager.app.mediaplayer360.imageviewer360.ImagePlayer360Activity"

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/Play360Content$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private create360ViewerAppList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/ImageEditorUtil;->isSamsungAppsAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    const-string/jumbo v3, "com.samsung.android.gear360viewer"

    const-string/jumbo v4, "com.samsung.android.gear360viewer.videoplayer360.VideoPlayer360Activity"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/Play360Content$1;)V

    new-instance v1, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    const-string/jumbo v3, "com.samsung.android.gear360viewer"

    const-string/jumbo v4, "com.samsung.android.gear360viewer.imageviewer360.ImagePlayer360Activity"

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/Play360Content$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private handlePlay360Content(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/Play360Content;->create360ManagerAppList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/controller/Play360Content;->startManagerApp(Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/controller/Play360Content;->startManagerApp(Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    goto :goto_0
.end method

.method private showPhotoEditorDownloadDialog(Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0888

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v0, v3, v1}, Lcom/sec/samsung/gallery/view/common/Image360Dialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->showDialog()V

    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private startManagerApp(Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    if-ne v5, v9, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "video/*"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string/jumbo v5, "KEY_MEDIA_PATH"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "original_path"

    invoke-static {p2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x10000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v3, v4

    :cond_3
    return v3

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "image/*"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "com.samsung.android.samsunggear360manager"

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/Play360Content;->create360ViewerAppList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    if-ne v5, v9, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    invoke-direct {p0, v3, p2}, Lcom/sec/samsung/gallery/controller/Play360Content;->startViewerApp(Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    if-ne v3, v8, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;

    invoke-direct {p0, v3, p2}, Lcom/sec/samsung/gallery/controller/Play360Content;->startViewerApp(Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_1
.end method

.method private startViewerApp(Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "video/*"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string/jumbo v4, "received_file_path"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "original_path"

    invoke-static {p2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/Play360Content;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "image/*"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "com.samsung.android.gear360viewer"

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/Play360Content$Contents360PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v7, :cond_4

    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/Play360Content;->showPhotoEditorDownloadDialog(Z)V

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public execute(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/Play360Content;->handlePlay360Content(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method
