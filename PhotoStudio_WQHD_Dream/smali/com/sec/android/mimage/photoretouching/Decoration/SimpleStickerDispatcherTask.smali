.class public Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;
.super Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;
.source "SimpleStickerDispatcherTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADING_PRESENT_DELAY:I

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSITION_DURATION:I


# instance fields
.field private final contentType:Ljava/lang/String;

.field private isBlackTheme:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->isBlackTheme:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->contentType:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->isBlackTheme:Z

    return-void
.end method

.method private getDownloadStickerBitmap(Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;)Landroid/graphics/drawable/Drawable;
    .locals 14

    const/high16 v13, 0x49800000    # 1048576.0f

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const-string v10, "drawable"

    invoke-virtual {v6, v5, v10, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v6, v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    iput v10, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v6, v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v10, "~Rakesh"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "giff - w"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " h="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Landroid/support/v4/graphics/BitmapCompat;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const-string v10, "drawable"

    invoke-virtual {v6, v5, v10, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v10, "~Rakesh"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downl - w"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " h="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Landroid/support/v4/graphics/BitmapCompat;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v10, "~Rakesh"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDownloadStickerBitmap()... Exception ---->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ae

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_1
    return-object v4
.end method

.method public getValue()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getValue()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/ImageView;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->setView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getValue()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/GraphicUtils;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onDispatch()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p0, p0, v6, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->runOnUiThread(Ljava/util/concurrent/Callable;J)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v6, "~Rakesh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preload - w"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/support/v4/graphics/BitmapCompat;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x49800000    # 1048576.0f

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    instance-of v6, v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    if-eqz v6, :cond_1

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getDownloadStickerBitmap(Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v6, "~Rakesh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "~Rakesh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception ---->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPostDispatch(Ljava/lang/Object;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-eqz v1, :cond_0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public onPreDispatch()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Sticker"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;->isBlackTheme:Z

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
