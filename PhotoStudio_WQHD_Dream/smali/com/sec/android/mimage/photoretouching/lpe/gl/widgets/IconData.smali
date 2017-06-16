.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;
.super Ljava/lang/Object;
.source "IconData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$InitGPUEngine;
    }
.end annotation


# static fields
.field public static final ID_DISABLED:I = 0x4

.field public static final ID_FOCUSED:I = 0x3

.field public static final ID_NORMAL:I = 0x0

.field public static final ID_PRESSED:I = 0x1

.field public static final ID_SELECTED:I = 0x2

.field public static final SUB_STATE_EFFECT_DAWN_CAST_2:I = 0x2

.field public static final SUB_STATE_EFFECT_IMPRESSIONIST_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PEDIT_Icondata"

.field private static isInitGPUEngine:Z

.field private static mCachedIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private static mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

.field static mappingGPUIds:Landroid/util/SparseIntArray;

.field private static paint:Landroid/graphics/Paint;

.field private static sCachedTextures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private static sEffectThumbsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->isInitGPUEngine:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->isInitGPUEngine:Z

    return p0
.end method

.method private static createTexture(III)[I
    .locals 4

    mul-int v2, p1, p2

    new-array v1, v2, [I

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->makeScaledIntBuffer(Landroid/graphics/Bitmap;[III)V

    :cond_0
    const/4 v0, 0x0

    return-object v1

    :sswitch_0
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f020765

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f020764

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f020760

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f020761

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f020762

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f020763

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f02075e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f02075f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_7
        0x1014 -> :sswitch_0
        0x1015 -> :sswitch_4
        0x1019 -> :sswitch_5
        0x101d -> :sswitch_6
        0x101f -> :sswitch_2
        0x1021 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getGPUThumbNail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v2, 0x0

    array-length v3, p0

    new-array v1, v3, [I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sget-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->isInitGPUEngine:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "PEDIT_Icondata"

    const-string v4, " gpu engine is not initialised properly  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "icon data "

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v3

    sput-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    :cond_1
    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMappingIds()Landroid/util/SparseIntArray;

    move-result-object v3

    sput-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mappingGPUIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x1012

    if-ge p3, v3, :cond_7

    add-int/lit16 v9, p3, -0x1002

    :goto_0
    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-nez v3, :cond_2

    const-string v3, "PEDIT_Icondata"

    const-string v4, " mSecImaging instance is null  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "icon data "

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v3

    sput-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    :cond_2
    const-string v3, "PEDIT_Icondata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " EFFECT ID IS  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTaskRunning:Z

    const/4 v0, 0x0

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-static {v3, v4, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->doProcess(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "PEDIT_Icondata"

    const-string v4, " outputBitmap isRecycled  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    sget-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isLassoCropped:Z

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {p0, v1, p1, p2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->copyInputAlpha([I[III)I

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_6
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v8, 0x0

    return-object v0

    :cond_7
    add-int/lit16 v3, p3, -0x102b

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int v9, v3, v4

    goto/16 :goto_0

    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private static getIcon(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getIcon(II)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->bmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->resId:I

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->bmp:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->bmp:Landroid/graphics/Bitmap;

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getText(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :sswitch_0
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f07029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0702b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0702b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f07017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f07014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0702cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0700dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f07010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0702a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070341

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070325

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070354

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f07025a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f070124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f07015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const-string v1, " "

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1012 -> :sswitch_13
        0x1013 -> :sswitch_8
        0x1014 -> :sswitch_e
        0x1015 -> :sswitch_d
        0x1016 -> :sswitch_a
        0x1017 -> :sswitch_2
        0x1018 -> :sswitch_6
        0x1019 -> :sswitch_c
        0x101a -> :sswitch_f
        0x101b -> :sswitch_10
        0x101c -> :sswitch_16
        0x101d -> :sswitch_17
        0x101e -> :sswitch_15
        0x101f -> :sswitch_b
        0x1020 -> :sswitch_9
        0x1021 -> :sswitch_7
        0x1022 -> :sswitch_3
        0x1023 -> :sswitch_18
        0x1024 -> :sswitch_19
        0x1025 -> :sswitch_1a
        0x1026 -> :sswitch_14
        0x1027 -> :sswitch_12
        0x1028 -> :sswitch_11
        0x1029 -> :sswitch_4
        0x102a -> :sswitch_5
        0x104a -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTexture(III)[I
    .locals 3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sCachedTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sCachedTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    mul-int v2, p1, p2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->createTexture(III)[I

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sCachedTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sCachedTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1
.end method

.method public static getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 27

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    const/4 v14, 0x0

    :cond_1
    :goto_0
    return-object v14

    :cond_2
    mul-int v3, p1, p2

    new-array v5, v3, [I

    mul-int v3, p1, p2

    new-array v4, v3, [B

    const/4 v12, 0x0

    const/16 v26, 0x0

    invoke-static/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getGPUThumbNail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_0

    :cond_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p0, :cond_4

    sparse-switch p3, :sswitch_data_0

    :cond_4
    :goto_1
    move-object/from16 v13, v26

    :goto_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    move/from16 v17, p1

    move/from16 v20, p1

    move/from16 v21, p2

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    sget-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v3, :cond_6

    invoke-static/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getText(I)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->paint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->paint:Landroid/graphics/Paint;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    const v7, 0x7f080431

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, v25

    div-int/lit8 v23, v3, 0x2

    const/4 v3, 0x3

    move/from16 v0, v23

    if-ge v0, v3, :cond_5

    const/16 v23, 0x3

    :cond_5
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, v23

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVintage([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPopArt([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_3
    const/16 v8, 0xa

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlGreyscale([I[B[IIIILandroid/graphics/Rect;)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySepia([I[III)I

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_5
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySharpen([I[IIII)I

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_6
    const/16 v3, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySoftglow([I[IIII)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyRainbow([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_8
    const/16 v3, 0x1014

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v12

    if-nez v12, :cond_7

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v13, v4

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyStardustPartial([I[I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_9
    const/16 v3, 0x1015

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v12

    if-nez v12, :cond_8

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v13, v4

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightFlarePartial([I[I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_a
    const/16 v3, 0x1019

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v12

    if-nez v12, :cond_9

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v13, v4

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightStreakPartial([I[I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_b
    const/16 v3, 0x1021

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v12

    if-nez v12, :cond_a

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v12, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySketchTexture([I[I[III)I

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_c
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyInvert([I[B[IIILandroid/graphics/Rect;)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_d
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyCartoonize([I[III)I

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_e
    const/16 v3, 0x101f

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v12

    const/4 v3, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v13

    if-eqz v12, :cond_b

    if-nez v13, :cond_c

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v10, p0

    move-object v11, v5

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-static/range {v10 .. v15}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyImpressionist([I[I[I[III)V

    goto/16 :goto_2

    :sswitch_f
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDownlight([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_10
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyBluewash([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_11
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyNostalgia([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_12
    const/16 v8, 0x32

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlFadedColour([I[B[IIIILandroid/graphics/Rect;)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_13
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVignette([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyTurquoise([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_15
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyYellowglow([I[III)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_16
    const/16 v3, 0x101d

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v12

    const/4 v3, 0x2

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getTexture(III)[I

    move-result-object v13

    if-eqz v12, :cond_d

    if-nez v13, :cond_e

    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v10, p0

    move-object v11, v5

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-static/range {v10 .. v15}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDawnCast([I[I[I[III)V

    goto/16 :goto_2

    :sswitch_17
    const/16 v8, 0x64

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPosterizePartial([I[B[IIIILandroid/graphics/Rect;)I

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_18
    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v4

    move/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, v9

    invoke-static/range {v14 .. v19}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyGothicNoirPartial([I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v13, v26

    goto/16 :goto_2

    :sswitch_19
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyMagicPenPartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1012 -> :sswitch_5
        0x1013 -> :sswitch_6
        0x1014 -> :sswitch_8
        0x1015 -> :sswitch_9
        0x1016 -> :sswitch_d
        0x1017 -> :sswitch_1
        0x1018 -> :sswitch_7
        0x1019 -> :sswitch_a
        0x101a -> :sswitch_f
        0x101b -> :sswitch_10
        0x101c -> :sswitch_15
        0x101d -> :sswitch_16
        0x101e -> :sswitch_14
        0x101f -> :sswitch_e
        0x1020 -> :sswitch_c
        0x1021 -> :sswitch_b
        0x1022 -> :sswitch_2
        0x1023 -> :sswitch_17
        0x1024 -> :sswitch_18
        0x1025 -> :sswitch_19
        0x1026 -> :sswitch_13
        0x1027 -> :sswitch_12
        0x1028 -> :sswitch_11
        0x1029 -> :sswitch_3
        0x102a -> :sswitch_4
        0x104a -> :sswitch_0
    .end sparse-switch
.end method

.method public static init(Landroid/content/res/Resources;)V
    .locals 8

    const/4 v7, 0x2

    const v6, 0x7f020481

    const v5, 0x7f020453

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "PEDIT_Icondata"

    const-string v2, " init start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sEffectThumbsCache:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sCachedTextures:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0205d8

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20001

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0205da

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20002

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0205db

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20003

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0205dc

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x2000b

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201ea

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201ea

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20004

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201c9

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201c9

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20005

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201cc

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201cc

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20006

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201cf

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201cf

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x2000c

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d0

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d0

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20007

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d3

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d3

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20008

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d8

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d8

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x2000d

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d9

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201d9

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x20009

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201dc

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f0201dc

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const v2, 0x2000a

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f020452

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    const v2, 0x7f020478

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    invoke-direct {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static makeScaledIntBuffer(Landroid/graphics/Bitmap;[III)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    return-void
.end method

.method public static recreateSecImaging(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->isInitGPUEngine:Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    const-string v0, "PEDIT_Icondata"

    const-string v2, " recreateSecImaging in Icondata "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ICON DATA"

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->isInitGPUEngine:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static release()V
    .locals 8

    const/4 v5, 0x0

    sput-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;

    iget-object v5, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mCachedIcons:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->sCachedTextures:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    monitor-enter v6

    :try_start_0
    const-string v5, "PEDIT_Icondata"

    const-string v7, " Release is called in Icondata "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->release()V

    :cond_3
    const/4 v5, 0x0

    sput-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->isInitGPUEngine:Z

    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
