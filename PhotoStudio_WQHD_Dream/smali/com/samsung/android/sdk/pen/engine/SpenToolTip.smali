.class Lcom/samsung/android/sdk/pen/engine/SpenToolTip;
.super Ljava/lang/Object;
.source "SpenToolTip.java"


# static fields
.field static final MAX_PEN_SIZE:I = 0x64

.field static final PEN_POINTER_SIZE:I = 0xc8

.field static final TIMESTAMP_GAP:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDensity:F

.field private mEraserBitmap:Landroid/graphics/Bitmap;

.field private mEraserPaint:Landroid/graphics/Paint;

.field private mPenBitmap:Landroid/graphics/Bitmap;

.field private mPenImageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

.field private mPenPaint:Landroid/graphics/Paint;

.field private mPoints:[Landroid/graphics/PointF;

.field private mPressures:[F

.field private mSdkResources:Landroid/content/res/Resources;

.field private mSelectionBitmap:Landroid/graphics/Bitmap;

.field private mSpoidBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mDensity:F

    new-instance v3, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {v3, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/PointF;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v5, 0x42480000    # 50.0f

    invoke-direct {v4, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v3, v6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-direct {v4, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v3, v9

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const v4, 0x3f4ccccd    # 0.8f

    aput v4, v3, v6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const v4, 0x3f19999a    # 0.6f

    aput v4, v3, v9

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    :cond_5
    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->flushLayoutCache()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    :cond_7
    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    :cond_8
    return-void
.end method

.method public getDrawableEraserImage(F)Landroid/graphics/drawable/Drawable;
    .locals 14

    const/16 v13, 0x64

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const-string v7, "airview_pointer_eraser_50"

    const-string v8, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move-object v5, v6

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-static {v5, v4}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v13, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v5, v6

    goto :goto_0

    :cond_3
    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    const/high16 p1, 0x42c80000    # 100.0f

    :cond_4
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v10, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    float-to-int v5, p1

    float-to-int v7, p1

    invoke-virtual {v2, v10, v10, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v5, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    div-float v5, p1, v11

    sub-float v5, v12, v5

    div-float v6, p1, v11

    sub-float v6, v12, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_4

    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3, v6, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getDrawableEraserImage(FFF)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/16 v5, 0xcc

    const/high16 v7, 0x42cc0000    # 102.0f

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    mul-float v2, p1, p2

    mul-float v3, p1, p3

    new-instance v1, Landroid/graphics/RectF;

    sub-float v4, v7, v2

    sub-float v5, v7, v3

    add-float v6, v7, v2

    add-float/2addr v7, v3

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method public getDrawableHoverImage()Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x64

    const/16 v10, 0x39

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const-string v7, "snote_toolbar_icon_spuit"

    const-string v8, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v6, v4, v10, v10}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->resizeImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    :cond_2
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v12, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/16 v6, 0x2b

    invoke-virtual {v2, v6, v12, v11, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v3, v5, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSpoidBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getDrawableImage(Ljava/lang/String;IF)Landroid/graphics/drawable/Drawable;
    .locals 32

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->getPenInfoList()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    if-eqz p1, :cond_1

    const-string v8, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableEraserImage(F)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_0

    :cond_1
    const/16 v30, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v30

    if-ge v0, v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenList:Ljava/util/List;

    move/from16 v0, v30

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    const/16 v8, 0xc8

    const/16 v9, 0xc8

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    :cond_2
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v28

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v9, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "snote_popup_pensetting_preview_alpha"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    check-cast v27, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mDensity:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    const/4 v8, 0x0

    const/16 v9, 0xbe

    const/16 v10, 0x3c

    const/high16 v11, 0x433e0000    # 190.0f

    add-float v11, v11, p3

    float-to-int v11, v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    shr-int/lit8 v9, p2, 0x18

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v27, :cond_3

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v9, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_3
    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_4
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    const/16 v9, 0xbe

    const/16 v10, 0x64

    const/high16 v11, 0x433e0000    # 190.0f

    add-float v11, v11, p3

    float-to-int v11, v11

    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_0
    move-exception v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_4

    :cond_5
    :try_start_2
    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setColor(I)V

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v8, p3, v8

    if-lez v8, :cond_6

    const/high16 p3, 0x42c80000    # 100.0f

    :cond_6
    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setSize(F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v31, Landroid/graphics/RectF;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/RectF;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v6, v4

    move/from16 v12, p3

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v24

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->recycle()V

    const/16 v29, 0xa

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    const/16 v9, 0xb

    int-to-float v9, v9

    div-float v21, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    const/16 v9, 0xb

    int-to-float v9, v9

    div-float v22, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/16 v9, 0xb

    int-to-float v9, v9

    div-float v19, v8, v9

    const-wide/16 v8, 0x64

    add-long v6, v4, v8

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v29

    if-gt v0, v1, :cond_7

    const-wide/16 v8, 0x5

    add-long/2addr v6, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move/from16 v0, v25

    int-to-float v10, v0

    mul-float v10, v10, v21

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move/from16 v0, v25

    int-to-float v11, v0

    mul-float v11, v11, v22

    add-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move/from16 v0, v25

    int-to-float v12, v0

    mul-float v12, v12, v19

    add-float/2addr v11, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v12, p3

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v24

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    :cond_7
    const-wide/16 v8, 0x2bc

    add-long v6, v4, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPressures:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v12, p3

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v24

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    :catch_1
    move-exception v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto/16 :goto_4

    :catch_2
    move-exception v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getDrawableRemoverImage(FFF)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const-string v6, "airview_pointer_eraser"

    const-string v7, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/16 v6, 0x46

    const/16 v7, 0x46

    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->resizeImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    const/16 v5, 0x64

    const/16 v6, 0x64

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    :cond_2
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_4

    const/4 v5, 0x0

    const/16 v6, 0x2d

    const/16 v7, 0x23

    const/16 v8, 0x50

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    const/16 v6, 0x14

    const/16 v7, 0x46

    const/16 v8, 0x5a

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getDrawableRemoverImage(I)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v5, 0x0

    const/16 v12, 0x64

    const/16 v11, 0x46

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const-string v7, "airview_pointer_eraser"

    const-string v8, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mDensity:F

    const/high16 v7, 0x41b80000    # 23.0f

    mul-float/2addr v6, v7

    float-to-int p1, v6

    if-le p1, v11, :cond_2

    const/16 p1, 0x46

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v6, v4, v11, v11}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->resizeImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v12, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mDensity:F

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    float-to-int v2, v5

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v10, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v5, p1, 0x2

    rsub-int/lit8 v5, v5, 0x32

    add-int/2addr v5, v2

    int-to-float v5, v5

    div-int/lit8 v6, p1, 0x2

    rsub-int/lit8 v6, v6, 0x32

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v10, v10, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mEraserBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getDrawableSelectionImage(I)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/16 v11, 0x64

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const-string v7, "airview_pointer_lasso"

    const-string v8, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    move-object v5, v6

    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const-string v7, "airview_pointer_rectangle"

    const-string v8, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mDensity:F

    const/high16 v7, 0x41b80000    # 23.0f

    mul-float/2addr v5, v7

    float-to-int v4, v5

    const/16 v5, 0x50

    if-le v4, v5, :cond_3

    const/16 v4, 0x50

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v5, v3, v4, v4}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->resizeImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v5, v6

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    :cond_5
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v5, v6

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v10, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v5, v4, 0x2

    rsub-int/lit8 v5, v5, 0x32

    int-to-float v5, v5

    div-int/lit8 v6, v4, 0x2

    rsub-int/lit8 v6, v6, 0x32

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v10, v10, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSelectionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public resizeImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;
    .locals 13

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v8, p3

    move/from16 v7, p4

    int-to-float v1, v8

    int-to-float v2, v3

    div-float v11, v1, v2

    int-to-float v1, v7

    int-to-float v2, v4

    div-float v10, v1, v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public setPenTooltipImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
