.class public Lcom/sec/game/gamecast/common/utility/CommonUiUtil;
.super Ljava/lang/Object;
.source "CommonUiUtil.java"


# static fields
.field private static final VALUE_FOR_CORRECT_X:I = 0x78


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angleToScale(FFF)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, p0

    add-float v1, p2, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method public static distanceToAngle(FFFF)F
    .locals 1

    mul-float v0, p1, p2

    div-float/2addr v0, p0

    add-float/2addr v0, p3

    return v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static enableDisableViewGroup(Landroid/view/ViewGroup;Z)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->enableDisableViewGroup(Landroid/view/ViewGroup;Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAbbNum(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/16 v4, 0xd

    new-array v0, v4, [[Ljava/lang/Object;

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "100+"

    aput-object v5, v4, v6

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v0, v6

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "500+"

    aput-object v5, v4, v6

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v0, v8

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_1_KPLUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v0, v9

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_5_KPLUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x1388

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v0, v10

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_10_KPLUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v0, v11

    const/4 v4, 0x5

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_50_KPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0xc350

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/4 v4, 0x6

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_100_KPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0x186a0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/4 v4, 0x7

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_500_KPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0x7a120

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x8

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_1_MPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0xf4240

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x9

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_5_MPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0x4c4b40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xa

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_10_MPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0x989680

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xb

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_50_MPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0x2faf080

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xc

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_100_MPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const v7, 0x5f5e100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x8

    new-array v1, v4, [[Ljava/lang/Object;

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_10_MIN_MINUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v1, v6

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_10_MINPLUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v1, v8

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_30_MINPLUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v1, v9

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_1_HRPLUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v1, v10

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_2_HRSPLUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x78

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v1, v11

    const/4 v4, 0x5

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_4_HRSPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v7, 0xf0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v1, v4

    const/4 v4, 0x6

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_6_HRSPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v7, 0x168

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v1, v4

    const/4 v4, 0x7

    new-array v5, v9, [Ljava/lang/Object;

    sget v7, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_SBODY_8_HRSPLUS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v7, 0x1e0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object v5, v1, v4

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch p2, :pswitch_data_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_0
    array-length v7, v0

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v3, v0, v5

    aget-object v4, v3, v8

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_3

    aget-object v4, v3, v6

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :pswitch_1
    array-length v7, v1

    move v5, v6

    :goto_2
    if-ge v5, v7, :cond_1

    aget-object v3, v1, v5

    aget-object v4, v3, v8

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    aget-object v4, v3, v6

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget-object v4, v3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getDensityDpi(Landroid/app/Activity;)I
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public static getDistanceBetweenCenterOfView(Landroid/view/View;Landroid/view/View;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/PointF;

    aget v3, v0, v7

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aget v4, v0, v8

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/PointF;

    aget v3, v0, v7

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aget v4, v0, v8

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    return v3
.end method

.method public static getDistanceBetweenCenterOfView2(IIILandroid/view/View;)I
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    new-array v0, v3, [I

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v3, p1

    int-to-float v4, p0

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, p0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v7

    add-int/lit8 v3, v3, -0x78

    aput v3, v0, v7

    new-instance v2, Landroid/graphics/PointF;

    aget v3, v0, v7

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    return v3
.end method

.method public static getDistanceBetweenPoint(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getDpToPix(Landroid/content/Context;D)I
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    :cond_0
    double-to-int v1, v2

    return v1
.end method

.method public static getPixelValue(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getPxToDp(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static getRelativePositionBetweenCenterOfView(Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/PointF;

    aget v3, v0, v7

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aget v4, v0, v8

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/PointF;

    aget v3, v0, v7

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aget v4, v0, v8

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public static getRelativePositionBetweenCenterOfView2(Landroid/view/View;III)Landroid/graphics/PointF;
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    add-int/lit8 p2, p2, 0x78

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/PointF;

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, p2

    int-to-float v4, p1

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    int-to-float v4, p3

    int-to-float v5, p1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public static getRelativePositionBetweenView(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;
    .locals 7

    const/4 v4, 0x2

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-array v3, v4, [I

    new-array v1, v4, [I

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x0

    aget v5, v3, v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRelativePositionBetweenViewAndPoint(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static getResolutionStringToText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string/jumbo v1, "p ("

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectableItemBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101030e

    aput v3, v0, v4

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getSelectableItemBackgroundBorderless(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getStringFromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isEnabledMobileKeyboard(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_keyboard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGameLauncherRTL(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHdResolution(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIconBackgrounds(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tap_to_icon"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isIntersectView(Landroid/view/View;Landroid/view/View;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v5, v0, v4

    aget v6, v0, v3

    aget v7, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v5, v0, v4

    aget v6, v0, v3

    aget v7, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isShowButtonBackground(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static releaseDrawable(Landroid/widget/ImageView;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public static setMaxFontScale(Landroid/content/Context;FLandroid/widget/TextView;)V
    .locals 5

    if-eqz p2, :cond_0

    :try_start_0
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    cmpl-float v3, v1, p1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    mul-float v4, v2, p1

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setMaxFontScale"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    move v1, v0

    :cond_0
    const/4 v3, 0x1

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static varargs setMaxFontScaleToLarge(Landroid/content/Context;[Landroid/widget/TextView;)V
    .locals 4

    const v0, 0x3f99999a    # 1.2f

    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScale(Landroid/content/Context;FLandroid/widget/TextView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setMixedContentMode_L(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    return-void
.end method
