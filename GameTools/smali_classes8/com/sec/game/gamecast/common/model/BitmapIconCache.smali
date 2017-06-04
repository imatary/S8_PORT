.class public Lcom/sec/game/gamecast/common/model/BitmapIconCache;
.super Ljava/lang/Object;
.source "BitmapIconCache.java"


# instance fields
.field private isFirst:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private final mDuration:J

.field private mLastModified:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mLastModified:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->isFirst:Z

    return-void
.end method

.method private _getAppIcon()Landroid/graphics/Bitmap;
    .locals 12

    const/16 v10, 0x100

    const-string/jumbo v8, "_getAppIcon()"

    invoke-static {v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mLastModified:J

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v8, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.game.gamehome"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "com.samsung.android.game.gamehome"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v7, v3, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x100

    const/16 v11, 0x100

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v8

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mCurrentTime:J

    iget-boolean v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->isFirst:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mLastModified:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->isFirst:Z

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->_getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mCurrentTime:J

    iget-wide v2, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mLastModified:J

    iget-wide v4, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string/jumbo v0, "getAppIcon()"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mLastModified:J

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->_getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
