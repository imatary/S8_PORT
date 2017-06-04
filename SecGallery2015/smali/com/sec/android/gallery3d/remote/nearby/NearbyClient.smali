.class public Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
.super Ljava/lang/Object;
.source "NearbyClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;,
        Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;,
        Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$FindDeviceKey;
    }
.end annotation


# static fields
.field private static final CACHE_QUEUE_MAX:I = 0x1e

.field private static final FULL_HD_HEIGHT:I = 0x438

.field private static final FULL_HD_WIDTH:I = 0x780

.field public static final NEARBY_CACHE_PREFIX:Ljava/lang/String; = "nearby_cache"

.field private static final NOT_PLAYED_YET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NearbyClient"

.field private static final USE_SCREEN_SHARING_USE_PREFETCH_FUNCTION:Z

.field private static final mCachedFileList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPendedPlayerId:Ljava/lang/String;


# instance fields
.field private mCacheFilePrefix:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private final mDeviceListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mDirection:I

.field private mIsViewerShowRequested:Z

.field private mLastPlayedActivityId:I

.field private final mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

.field private mPendedMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mPendedMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

.field private mPrepareMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mPrepareMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mShowOriginal:Z

.field private mUseAsf:Z

.field private mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

.field private mViewerOnPlaying:Z

.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCachedFileList:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mUseAsf:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    iput v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mLastPlayedActivityId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mShowOriginal:Z

    iput v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDirection:I

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->setCacheFilePrefix()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->showDialogDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refreshDeviceList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->playPendedPlayer()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;ILcom/samsung/android/allshare/Device;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->handleScreenSharingNotify(ILcom/samsung/android/allshare/Device;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mIsViewerShowRequested:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPrepareMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaSet;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPrepareMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPrepareMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPrepareMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->prepareItem(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refreshChangePlayerDialogRef()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/ImageViewer;)Lcom/samsung/android/allshare/media/ImageViewer;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDirection:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->prepareNeighbourItems(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mUseAsf:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mUseAsf:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method private compressForDmr(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 11

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v9, 0x780

    invoke-static {v7, v8, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v7

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt p3, v7, :cond_1

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt p4, v7, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string/jumbo v7, "NearbyClient"

    const-string/jumbo v8, "cannnot decode file for compress"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/System;->gc()V

    const-string/jumbo v7, "NearbyClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OutOfMemoryError : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p3, p4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->resizeDownTo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v7, "NearbyClient"

    const-string/jumbo v8, "resizeDownTo() returns null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string/jumbo v7, "NearbyClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resized to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string/jumbo v7, "NearbyClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string/jumbo v7, "NearbyClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resized to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    const-string/jumbo v8, "NearbyClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resized to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method private copyExifOrientation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "Orientation"

    const-string/jumbo v4, "Orientation"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "NearbyClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDevice(Lcom/samsung/android/allshare/Device;I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getIPAddress(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getP2pMacAddress(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getImageViewer()Lcom/samsung/android/allshare/media/ImageViewer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    return-object v0
.end method

.method private handleScreenSharingNotify(ILcom/samsung/android/allshare/Device;)V
    .locals 9

    move-object v3, p2

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getImageViewer()Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const-string/jumbo v1, "NearbyClient"

    const-string/jumbo v2, "handleScreenSharingNotify: currDevice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "NearbyClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleScreenSharingNotify: type is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getIPAddress(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->getResumeReuest()Z

    move-result v5

    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getP2pMacAddress(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/sec/samsung/gallery/lib/factory/DlnaConnectionRequestFactory;

    invoke-direct {v7}, Lcom/sec/samsung/gallery/lib/factory/DlnaConnectionRequestFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    invoke-interface {v7, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DlnaConnectionRequestInterface;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/samsung/gallery/lib/libinterface/DlnaConnectionRequestInterface;->screenSharingConnectionRequest(Landroid/content/Context;ILcom/samsung/android/allshare/Device;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private isOnlyOriginalImageSupported(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    return v0
.end method

.method private playImage(Lcom/samsung/android/allshare/media/ImageViewer;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;-><init>(Lcom/samsung/android/allshare/media/ImageViewer;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "new player thread, run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mIsViewerShowRequested:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private playPendedPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mLastPlayedActivityId:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->playPendedPlayer(ILcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method private prepareItem(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;
    .locals 10

    const/4 v7, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v8, "NearbyClient"

    const-string/jumbo v9, "prepareItem: item is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "NearbyClient"

    const-string/jumbo v9, "prepareItem : remote item"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v8, p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v8, :cond_2

    instance-of v8, p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-eqz v8, :cond_4

    :cond_2
    check-cast p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getItemToShow()Lcom/samsung/android/allshare/Item;

    move-result-object v3

    :cond_3
    :goto_1
    if-nez v3, :cond_0

    const-string/jumbo v7, "NearbyClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "itemToShow is null, filePath is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    instance-of v8, p1, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v8, :cond_5

    check-cast p1, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getNearbyItem()Lcom/samsung/android/allshare/Item;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_6

    move-object v3, v7

    goto :goto_0

    :cond_6
    const-string/jumbo v7, "content"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string/jumbo v7, "http"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    invoke-direct {v7, v6, v4}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v3

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->isOnlyOriginalImageSupported(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mShowOriginal:Z

    if-eqz v7, :cond_a

    :cond_9
    new-instance v7, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v3

    goto :goto_1

    :cond_a
    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    if-nez v7, :cond_b

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->setCacheFilePrefix()V

    :cond_b
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->createCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    const/16 v7, 0x780

    const/16 v8, 0x438

    invoke-direct {p0, v1, v0, v7, v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->compressForDmr(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v5, v0

    :goto_2
    if-eqz v2, :cond_d

    const-string/jumbo v7, "image/jpeg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct {p0, v1, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->copyExifOrientation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v7, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v7, v5, v4}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v3

    if-eqz v2, :cond_3

    sget-object v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCachedFileList:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCachedFileList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/16 v8, 0x1e

    if-le v7, v8, :cond_3

    sget-object v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCachedFileList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->deletePreviousCache(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    move-object v5, v1

    goto :goto_2
.end method

.method private prepareNeighbourItems(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    if-nez v14, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->setCacheFilePrefix()V

    :cond_0
    const/16 v1, -0x2710

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/sec/android/gallery3d/data/Path;I)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v10, 0x4

    sub-int v14, v3, v10

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int v14, v3, v10

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v9, v14, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    sub-int v4, v3, v13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x1

    :goto_0
    if-gt v12, v10, :cond_3

    add-int v14, v4, v12

    if-ge v14, v6, :cond_1

    add-int v14, v4, v12

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->createCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v14, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCachedFileList:Ljava/util/LinkedList;

    invoke-virtual {v14, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    add-int v14, v4, v12

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->prepareItem(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sub-int v14, v4, v12

    if-ltz v14, :cond_2

    sub-int v14, v4, v12

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->createCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v14, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCachedFileList:Ljava/util/LinkedList;

    invoke-virtual {v14, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    sub-int v14, v4, v12

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->prepareItem(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-object v11
.end method

.method private refreshChangePlayerDialogRef()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;->onDeviceChanged()V

    :cond_0
    return-void
.end method

.method private refreshDeviceList()V
    .locals 9

    const-string/jumbo v5, "NearbyClient"

    const-string/jumbo v6, "refresh device list"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-nez v5, :cond_0

    const-string/jumbo v5, "NearbyClient"

    const-string/jumbo v6, "ignore refresh for the device list"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->refresh()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v6, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v7, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v6, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v7, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v3, :cond_1

    const-string/jumbo v5, "NearbyClient"

    const-string/jumbo v6, "AbstractGalleryActivity instance is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/nearby/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v4, :cond_2

    const-string/jumbo v6, "NearbyClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Update device in NearbyDevice instance. device id= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->update(Lcom/samsung/android/allshare/Device;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "NearbyClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "device count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Provider : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ImageViewer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private resizeDownTo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p2

    int-to-float v12, v0

    int-to-float v13, v7

    div-float v11, v12, v13

    move/from16 v0, p3

    int-to-float v12, v0

    int-to-float v13, v6

    div-float v3, v12, v13

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    int-to-float v12, v7

    mul-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v12, v6

    mul-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-lez v10, :cond_1

    if-gtz v9, :cond_2

    :cond_1
    const-string/jumbo v12, "NearbyClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "target size is wrong, srcWidth:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , srcHeight:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ,scale:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_2
    invoke-static {v10, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v12, 0x2

    invoke-direct {v4, v12}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v12, v13, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private setCacheFilePrefix()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nearby_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mCacheFilePrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setPendedPlayer(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "NearbyClient"

    const-string/jumbo v2, "setPendedPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "DMRUDN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedPlayerId:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/gallery3d/sconnect/SConnectUtil;->isSConnectIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/sconnect/SConnectUtil;->getDeviceId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedPlayerId:Ljava/lang/String;

    goto :goto_0
.end method

.method private showDialogDisconnected(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "NearbyClient"

    const-string/jumbo v2, "showDialogDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NearbyClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    viewer was playing? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->handleScreenSharingNotify(ILcom/samsung/android/allshare/Device;)V

    :cond_0
    iput-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mShowOriginal:Z

    iput v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDirection:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a016c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$4;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$4;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method private stopPlayer()V
    .locals 3

    const-string/jumbo v1, "NearbyClient"

    const-string/jumbo v2, "stop player called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-nez v1, :cond_1

    const-string/jumbo v1, "NearbyClient"

    const-string/jumbo v2, "mViewer is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getViewerState()Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public changePlayer(ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 7

    const-string/jumbo v3, "NearbyClient"

    const-string/jumbo v4, "changePlayer"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string/jumbo v3, "NearbyClient"

    const-string/jumbo v4, ""

    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "cannot play image through image viewer!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDevice(Ljava/lang/String;)Lcom/samsung/android/allshare/Device;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->handleScreenSharingNotify(ILcom/samsung/android/allshare/Device;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->disconnectWithPlayDevice()V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v3, "NearbyClient"

    const-string/jumbo v4, "no player to change"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/allshare/media/ImageViewer;

    :cond_7
    if-nez v2, :cond_8

    const-string/jumbo v3, "NearbyClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$5;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$5;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/allshare/media/ImageViewer;->setEventListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;)V

    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/allshare/media/ImageViewer;->setResponseListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;)V

    iput p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mLastPlayedActivityId:I

    invoke-direct {p0, v2, p4, p3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->playImage(Lcom/samsung/android/allshare/media/ImageViewer;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0
.end method

.method public disconnectWithPlayDevice()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->stopPlayer()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->handleScreenSharingNotify(ILcom/samsung/android/allshare/Device;)V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mShowOriginal:Z

    iput v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDirection:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "change_player_view_original"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v5, :cond_0

    instance-of v5, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v3

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getItemToShow()Lcom/samsung/android/allshare/Item;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/media/MediaServiceProvider;->getDownloader()Lcom/samsung/android/allshare/extension/SECDownloader;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/samsung/android/allshare/extension/SECDownloader;->Download(Ljava/lang/String;Ljava/util/ArrayList;)Z

    return-void
.end method

.method public getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getDevice(Ljava/lang/String;)Lcom/samsung/android/allshare/Device;
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "getDevice ID arg is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0
.end method

.method public getDevices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayDeviceList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    return-object v7

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device;

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;-><init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "NearbyClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore because not in the same NIC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDisplayDeviceListCount()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getOnPlayingPlayer()Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getIcon()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/media/ImageViewer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;-><init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public getSelectDisplayDeviceId(Ljava/lang/String;I)Lcom/samsung/android/allshare/Device;
    .locals 7

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "selectDisplayDevice: imageviewer list is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v4, "NearbyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSelectDisplayDeviceId: divide addr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " findType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDevice(Lcom/samsung/android/allshare/Device;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_3
    if-nez v2, :cond_0

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "selectedDevice is null, try refresh Device list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refreshDeviceList()V

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDevice(Lcom/samsung/android/allshare/Device;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v0

    goto :goto_2

    :cond_5
    if-nez v2, :cond_0

    const-string/jumbo v4, "NearbyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectedDevice is null, device addr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto/16 :goto_0
.end method

.method public isConnectedPlayer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    return v0
.end method

.method public playImageContinuously(ILcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mLastPlayedActivityId:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->disconnectWithPlayDevice()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDirection:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "change_player_view_original"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mShowOriginal:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->playImage(Lcom/samsung/android/allshare/media/ImageViewer;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method public playPendedPlayer(ILcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "playPendedPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedPlayerId:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    if-nez v0, :cond_1

    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "playing is pended. service provider null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mLastPlayedActivityId:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "play pended item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedPlayerId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->changePlayer(ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPendedPlayerId:Ljava/lang/String;

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->startAllShareFrameworkService()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refreshDeviceList()V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnDeviceChangedListener(Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public showDmsDisconnectedDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/Device;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_3
    if-eqz v3, :cond_0

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "showDmsDisconnected!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a016c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0042

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02f4

    new-instance v6, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$3;

    invoke-direct {v6, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$3;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public startAllShareFrameworkService()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    const-string/jumbo v3, "com.samsung.android.allshare.media"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbyClient"

    const-string/jumbo v2, "No AllShare Class found! ignore allshare"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public stopAllShareFrameworkService()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mUseAsf:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    :cond_1
    return-void
.end method
