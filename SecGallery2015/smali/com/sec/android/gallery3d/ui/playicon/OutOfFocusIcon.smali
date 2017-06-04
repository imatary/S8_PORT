.class public Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "OutOfFocusIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->OUT_OF_FOCUS:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f0201a7

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mIconResId:I

    const v0, 0x7f0a041d

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4032"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 5

    const/4 v4, 0x1

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.android.ofviewer"

    const-string/jumbo v3, "com.sec.android.ofviewer.SEFViewerActivity"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkComponentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    aput-object p1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_OUT_OF_FOCUS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v2, v0, v1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getGalleryID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/PlayOutOfFocus;->startOutOfFocusImage(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/lang/String;)V

    goto :goto_0
.end method
