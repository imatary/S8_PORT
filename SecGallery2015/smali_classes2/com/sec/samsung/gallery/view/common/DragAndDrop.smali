.class public Lcom/sec/samsung/gallery/view/common/DragAndDrop;
.super Ljava/lang/Object;
.source "DragAndDrop.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DragAndDrop"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mDragViewAdded:Z

.field private rotationDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->rotationDegree:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mDragViewAdded:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/common/DragAndDrop;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mDragViewAdded:Z

    return p1
.end method

.method private getData(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)Landroid/content/ClipData;
    .locals 10

    const/4 v0, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v2, "selectedUri"

    :goto_1
    invoke-virtual {p4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v6, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    if-nez v0, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v2, v9}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v2, "galleryUri"

    goto :goto_1

    :cond_6
    new-instance v8, Landroid/content/ClipData$Item;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v8}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    :cond_7
    if-nez v4, :cond_0

    if-nez v0, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v2, v8}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    goto :goto_0

    :cond_8
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto/16 :goto_0
.end method

.method private getData(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/ui/SelectionManager;)Landroid/content/ClipData;
    .locals 10

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "selectedUri"

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    move-object v5, v3

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Landroid/content/ClipData$Item;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v8}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "galleryUri"

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getImageView()Landroid/widget/ImageView;
    .locals 10

    const v9, 0x7f1200d7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    const v6, 0x7f1200d5

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040059

    const/4 v6, 0x0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/sec/samsung/gallery/view/common/DragAndDrop$1;

    invoke-direct {v1, p0, v5, v2}, Lcom/sec/samsung/gallery/view/common/DragAndDrop$1;-><init>(Lcom/sec/samsung/gallery/view/common/DragAndDrop;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v6, "DragAndDrop"

    const-string/jumbo v7, "addViewOnUiThread wait"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mDragViewAdded:Z

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "DragAndDrop"

    const-string/jumbo v7, "ImageView was not added to main layout"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "DragAndDrop"

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    :cond_0
    return-object v4

    :cond_1
    :try_start_3
    const-string/jumbo v6, "DragAndDrop"

    const-string/jumbo v7, "addViewOnUiThread resume"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private sendToSideSync(Landroid/content/ClipData;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPSSRunning(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "com.sec.android.sidesync.source.START_DRAG"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v8, "DragAndDrop"

    const-string/jumbo v9, "sideSync send intent : START_DRAG"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isKMSRunning(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v9, v3, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    move-object v7, v3

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v9, 0x0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    instance-of v9, v3, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    move-object v2, v3

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "sidesync.app.action.KMS_FILETRANSFER_DRAG_FILEINFO"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.extra.STREAM"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "sidesync.app.action.permission.KMS_FILETRANSFER_DRAG_FILEINFO"

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v8, "DragAndDrop"

    const-string/jumbo v9, "sideSync send intent : KMS_FILETRANSFER_DRAG_FILEINFO"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setRotatedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->setRotatedBitmapBadge(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private setRotatedBitmapBadge(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 29

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0158

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    const v3, 0x7f100122

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v2, 0x64

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    const/16 v2, 0xa

    move/from16 v0, p3

    if-lt v0, v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int v19, v19, v20

    :cond_1
    const/16 v2, 0x3e8

    move/from16 v0, p3

    if-lt v0, v2, :cond_2

    add-int v19, v19, v20

    :cond_2
    div-int/lit8 v25, v19, 0x2

    div-int/lit8 v24, v18, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v23, v2, v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v22, v2, v24

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v21, Landroid/graphics/Paint;

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    div-int/lit8 v2, v19, 0x2

    sub-int v2, v23, v2

    const/4 v3, 0x1

    invoke-static {v12, v2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_3

    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v13, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    const v3, 0x7f02020c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move/from16 v0, v19

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move/from16 v0, v18

    int-to-float v3, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-object v9

    :cond_3
    const/4 v2, 0x0

    move/from16 v0, v18

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v13, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v15

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    move/from16 v0, v28

    int-to-float v2, v0

    :try_start_1
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v9, 0x0

    goto :goto_1
.end method


# virtual methods
.method public startAlbumDrag(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-nez p3, :cond_0

    const-string/jumbo v2, "DragAndDrop"

    const-string/jumbo v3, "startAlbumDrag() adapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v9

    invoke-virtual {p3, p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v8, p4}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->getData(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/ui/SelectionManager;)Landroid/content/ClipData;

    move-result-object v7

    :goto_1
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->rotationDegree:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v7, p4}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->sendToSideSync(Landroid/content/ClipData;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    goto :goto_0

    :cond_1
    move-object v7, v10

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0141

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v7, p4}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->sendToSideSync(Landroid/content/ClipData;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    :cond_4
    invoke-virtual {p3, p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->rotationDegree:I

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    invoke-direct {p0, v6, v2, v3}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->setRotatedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    :cond_5
    new-instance v0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->getDragAndDropFlag()I

    move-result v2

    invoke-virtual {v1, v7, v0, v10, v2}, Landroid/widget/ImageView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method public startPhotosDrag(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 8

    if-nez p4, :cond_0

    const-string/jumbo v2, "DragAndDrop"

    const-string/jumbo v3, "startPhotosDrag() adapter is null "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->getData(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/android/gallery3d/ui/SelectionManager;)Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {p4, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    instance-of v2, v7, Lcom/sec/android/gallery3d/data/MtpImage;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0141

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v6, p5}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->sendToSideSync(Landroid/content/ClipData;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v6, p5}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->sendToSideSync(Landroid/content/ClipData;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->rotationDegree:I

    invoke-virtual {p4, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->rotationDegree:I

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->setRotatedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    :cond_5
    new-instance v0, Lcom/sec/samsung/gallery/view/common/DragShadow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/DragShadow;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    const/4 v3, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DragAndDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->getDragAndDropFlag()I

    move-result v2

    invoke-virtual {v1, v6, v0, v3, v2}, Landroid/widget/ImageView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto/16 :goto_0
.end method
