.class public Lcom/sec/game/gamecast/common/utility/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;,
        Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;,
        Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x190

.field public static final TYPE_EVENT_BANNER:I = 0x29

.field public static final TYPE_GAME_ICON_A:I = 0xa

.field public static final TYPE_GAME_ICON_B:I = 0xb

.field public static final TYPE_GAME_ICON_C:I = 0xc

.field public static final TYPE_GAME_ICON_D:I = 0xd

.field public static final TYPE_GAME_ICON_E:I = 0xe

.field public static final TYPE_GAME_ICON_F:I = 0xf

.field public static final TYPE_PROFILE_A:I = 0x14

.field public static final TYPE_PROFILE_B:I = 0x15

.field public static final TYPE_PROFILE_C:I = 0x16

.field public static final TYPE_PROFILE_D:I = 0x17

.field public static final TYPE_PROFILE_E:I = 0x18

.field public static final TYPE_PROFILE_F:I = 0x1a

.field public static final TYPE_PROFILE_G:I = 0x19

.field public static final TYPE_PROFILE_H:I = 0x1b

.field public static final TYPE_SCREEN_FULL:I = 0x28

.field public static final TYPE_THUMNAIL_COMMON:I = 0x1e

.field public static final TYPE_THUMNAIL_HOME:I = 0x20

.field public static final TYPE_THUMNAIL_POPULAR:I = 0x21

.field public static final TYPE_THUMNAIL_WIDE:I = 0x1f

.field private static mInstance:Lcom/sec/game/gamecast/common/utility/ImageLoader;


# instance fields
.field private SIZE_POOL:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private fileCache:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

.field private handler:Landroid/os/Handler;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mUrlDownloading:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    const-wide/high16 v6, 0x404b000000000000L    # 54.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    invoke-direct {v0}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->imageViews:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mUrlDownloading:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->fileCache:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4057c00000000000L    # 95.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4050800000000000L    # 66.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4040800000000000L    # 33.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x404e800000000000L    # 61.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x405a400000000000L    # 105.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4050400000000000L    # 65.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4055c00000000000L    # 87.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4070f00000000000L    # 271.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4069800000000000L    # 204.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x28

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    const/16 v1, 0x29

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    const-wide v4, 0x4074e00000000000L    # 334.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->handler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/utility/ImageLoader;Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->getBitmap(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/game/gamecast/common/utility/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->setImageWithAlphaAnimation(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    return-object v0
.end method

.method private static addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez p1, :cond_0

    if-ge p1, v3, :cond_0

    div-int/lit8 v0, v3, 0x2

    :goto_0
    div-int v5, v0, v2

    if-le v5, p1, :cond_0

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inSampleSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " src_w:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " src_h:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    return v2
.end method

.method public static decodeSampledBitmapFromFile(Ljava/io/File;ILcom/sec/game/gamecast/common/utility/BitmapMemoryCache;)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, p1}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->hasHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p2}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;)V

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getBitmap(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v4, 0x0

    :cond_0
    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mUrlDownloading:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->imageViewReused(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mUrlDownloading:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->fileCache:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    invoke-virtual {v5, p2}, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    invoke-static {v2, v5, v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->decodeSampledBitmapFromFile(Ljava/io/File;ILcom/sec/game/gamecast/common/utility/BitmapMemoryCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mUrlDownloading:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_0
.end method

.method public static declared-synchronized getImagLoader(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ImageLoader;
    .locals 2

    const-class v1, Lcom/sec/game/gamecast/common/utility/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mInstance:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/ImageLoader;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/utility/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mInstance:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mInstance:Lcom/sec/game/gamecast/common/utility/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;ZZI)V
    .locals 6

    new-instance v0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;Landroid/widget/ImageView;ZZI)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;

    invoke-direct {v2, p0, v0}, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;-><init>(Lcom/sec/game/gamecast/common/utility/ImageLoader;Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private setImageWithAlphaAnimation(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->clearCache()V

    return-void
.end method

.method public createBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5, v4}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->decodeSampledBitmapFromFile(Ljava/io/File;ILcom/sec/game/gamecast/common/utility/BitmapMemoryCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public createBitmapDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->SIZE_POOL:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->decodeSampledBitmapFromFile(Ljava/io/File;ILcom/sec/game/gamecast/common/utility/BitmapMemoryCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_1

    new-instance v2, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;IZZI)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;IZZI)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;IZZI)V
    .locals 9

    const/4 v8, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eq p3, v8, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p4, :cond_2

    new-instance v0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    invoke-virtual {v0, p1, p6}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->get(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    if-eqz v6, :cond_5

    if-eqz p4, :cond_4

    new-instance v0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;ZZI)V

    if-eq p3, v8, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p4, :cond_6

    new-instance v0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;ZI)V
    .locals 7

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;IZZI)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;ZZI)V
    .locals 7

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;IZZI)V

    return-void
.end method

.method imageViewReused(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
