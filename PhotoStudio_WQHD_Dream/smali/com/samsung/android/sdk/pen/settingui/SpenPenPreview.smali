.class Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;
.super Landroid/view/View;
.source "SpenPenPreview.java"


# static fields
.field private static CANVAS_WIDTH_VEINNA:I

.field private static INIT_NUM_POINTS:I

.field private static NUM_POINTS:I

.field private static OILBRUSH2_NUM_POINTS:I

.field private static PREVIEW_STROKE_END_MARGIN:I


# instance fields
.field private mAdvancedSetting:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvasWidth:I

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mIsEraserEnabled:Z

.field private mMax:F

.field private mMin:F

.field private mOilBrush2Points:[F

.field private mOilBrush2Pressures:[F

.field private mOriginalStrokeWidth:F

.field private mPenPluginInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

.field private mPenType:Ljava/lang/String;

.field private mPoints:[F

.field private mPressures:[F

.field private mRect:Landroid/graphics/RectF;

.field private mStrokeWidth:F

.field private mbottom:I

.field private mleft:I

.field private mright:I

.field private mtop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->INIT_NUM_POINTS:I

    const/16 v0, 0xc8

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    const/16 v0, 0x640

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->CANVAS_WIDTH_VEINNA:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->PREVIEW_STROKE_END_MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOriginalStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mColor:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mIsEraserEnabled:Z

    const/16 v0, 0x438

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mright:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mbottom:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMin:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMax:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOriginalStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mColor:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mIsEraserEnabled:Z

    const/16 v0, 0x438

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mright:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mbottom:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMin:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMax:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOriginalStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mColor:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mIsEraserEnabled:Z

    const/16 v0, 0x438

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mright:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mbottom:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMin:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMax:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->construct(Landroid/content/Context;)V

    return-void
.end method

.method private checkResolution()V
    .locals 14

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mright:I

    iget v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    sub-int v8, v10, v11

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mbottom:I

    iget v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    sub-int v3, v10, v11

    int-to-float v10, v8

    const/high16 v11, 0x41800000    # 16.0f

    div-float v9, v10, v11

    int-to-float v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float v2, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v11, 0x0

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    int-to-float v12, v12

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v11, 0x0

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    int-to-float v12, v12

    aput v12, v10, v11

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->CANVAS_WIDTH_VEINNA:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v11, "Marker"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v11, ".Brush"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v7

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMinSettingValue()F

    move-result v5

    const/high16 v10, 0x41200000    # 10.0f

    add-float/2addr v10, v5

    iget v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x43b40000    # 360.0f

    div-float/2addr v10, v11

    iput v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMax:F

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    const/high16 v11, 0x43b40000    # 360.0f

    div-float/2addr v10, v11

    iput v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMin:F

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    iget v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMin:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMax:F

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mMin:F

    sub-float/2addr v11, v12

    div-float v0, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v11, 0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    sub-float/2addr v12, v0

    add-float/2addr v12, v2

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    sub-float/2addr v12, v0

    add-float/2addr v12, v2

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v11, 0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    sub-float/2addr v12, v0

    add-float/2addr v12, v2

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    sub-float/2addr v12, v0

    add-float/2addr v12, v2

    aput v12, v10, v11

    :goto_0
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x2

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    int-to-float v12, v12

    const/high16 v13, 0x41800000    # 16.0f

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x2

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    int-to-float v12, v12

    const/high16 v13, 0x41800000    # 16.0f

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x2

    aget v10, v10, v11

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-float/2addr v10, v11

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float v1, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x2

    aget v10, v10, v11

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-float/2addr v10, v11

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float v6, v10, v11

    const/4 v4, 0x2

    :goto_1
    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, -0x2

    if-ge v4, v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    add-int/lit8 v12, v4, -0x2

    aget v11, v11, v12

    add-float/2addr v11, v1

    aput v11, v10, v4

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    add-int/lit8 v11, v4, 0x1

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v11, 0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    add-float/2addr v12, v2

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    add-float/2addr v12, v2

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v11, 0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    add-float/2addr v12, v2

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    int-to-float v12, v12

    add-float/2addr v12, v2

    aput v12, v10, v11

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_2
    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, -0x2

    if-ge v4, v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    add-int/lit8 v12, v4, -0x2

    aget v11, v11, v12

    add-float/2addr v11, v6

    aput v11, v10, v4

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    add-int/lit8 v11, v4, 0x1

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    const/4 v11, 0x0

    const v12, 0x3f333333    # 0.7f

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    const/4 v11, 0x0

    const v12, 0x3f333333    # 0.7f

    aput v12, v10, v11

    const/4 v4, 0x1

    :goto_3
    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    if-ge v4, v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    add-int/lit8 v12, v4, -0x1

    aget v11, v11, v12

    const v12, 0x3ccccccd    # 0.025f

    sub-float/2addr v11, v12

    aput v11, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_4
    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    if-ge v4, v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    add-int/lit8 v12, v4, -0x1

    aget v11, v11, v12

    const v12, 0x3ccccccd    # 0.025f

    sub-float/2addr v11, v12

    aput v11, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmapPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public construct(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->INIT_NUM_POINTS:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->INIT_NUM_POINTS:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mCanvasWidth:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v23

    const/4 v6, -0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    if-eqz v6, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mAdvancedSetting:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setAdvancedSetting(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mColor:I

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->checkResolution()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-float v24, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    mul-float v20, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v7, "ObliquePen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v7, "Marker2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v24, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v20, v6, v7

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v7, "OilBrush2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v22, 0x0

    :goto_2
    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    move/from16 v0, v22

    if-ge v0, v6, :cond_f

    if-nez v22, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    mul-int/lit8 v8, v22, 0x2

    aget v7, v7, v8

    add-float v7, v7, v24

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    mul-int/lit8 v9, v22, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    aget v9, v9, v22

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v7, "Marker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v20, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x2

    aget v6, v6, v7

    sub-float v6, v6, v20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x4

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v7, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x2

    aget v8, v8, v9

    sub-float v8, v8, v20

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v6, v7

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v7, ".Brush"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-float v20, v6, v7

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v7, "WaterColorPen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v24, v6, v7

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    const-string v7, "OilBrush2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v24, 0x0

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_a
    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v22

    if-ne v0, v6, :cond_b

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    sub-int v6, v6, v22

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    mul-long/2addr v6, v8

    add-long v4, v2, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    mul-int/lit8 v8, v22, 0x2

    aget v7, v7, v8

    sub-float v7, v7, v20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    mul-int/lit8 v9, v22, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    aget v9, v9, v22

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3

    :cond_b
    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    sub-int v6, v6, v22

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    mul-long/2addr v6, v8

    add-long v4, v2, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    mul-int/lit8 v8, v22, 0x2

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    mul-int/lit8 v9, v22, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    aget v9, v9, v22

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3

    :cond_c
    const/16 v22, 0x0

    :goto_4
    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    move/from16 v0, v22

    if-ge v0, v6, :cond_f

    if-nez v22, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    mul-int/lit8 v7, v22, 0x2

    aget v6, v6, v7

    add-float v11, v6, v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    mul-int/lit8 v7, v22, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v12, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    aget v13, v6, v22

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide v6, v2

    move-wide v8, v2

    invoke-static/range {v6 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_d
    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v22

    if-ne v0, v6, :cond_e

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    sub-int v6, v6, v22

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    mul-long/2addr v6, v8

    add-long v4, v2, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    mul-int/lit8 v8, v22, 0x2

    aget v7, v7, v8

    sub-float v7, v7, v20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    mul-int/lit8 v9, v22, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    aget v9, v9, v22

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_5

    :cond_e
    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    sub-int v6, v6, v22

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    mul-long/2addr v6, v8

    add-long v4, v2, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    mul-int/lit8 v8, v22, 0x2

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    mul-int/lit8 v9, v22, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    aget v9, v9, v22

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOriginalStrokeWidth:F

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    if-eqz p1, :cond_3

    sub-int v8, p4, p2

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->PREVIEW_STROKE_END_MARGIN:I

    sub-int v6, v8, v9

    sub-int v3, p5, p3

    int-to-float v8, v6

    const/high16 v9, 0x41800000    # 16.0f

    div-float v7, v8, v9

    int-to-float v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, v8, v9

    iput p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mleft:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mtop:I

    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->PREVIEW_STROKE_END_MARGIN:I

    sub-int v8, p4, v8

    iput v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mright:I

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mbottom:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v9, 0x0

    int-to-float v10, p2

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v9, 0x1

    int-to-float v10, p3

    add-float/2addr v10, v2

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v9, 0x0

    int-to-float v10, p2

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v9, 0x1

    int-to-float v10, p3

    add-float/2addr v10, v2

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x2

    int-to-float v10, p2

    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x1

    int-to-float v10, p3

    add-float/2addr v10, v2

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x2

    int-to-float v10, p2

    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x1

    int-to-float v10, p3

    add-float/2addr v10, v2

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x2

    aget v8, v8, v9

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float v1, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x2

    aget v8, v8, v9

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float v5, v8, v9

    const/4 v4, 0x2

    :goto_0
    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    add-int/lit8 v10, v4, -0x2

    aget v9, v9, v10

    add-float/2addr v9, v1

    aput v9, v8, v4

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPoints:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    aput v10, v8, v9

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_1
    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ge v4, v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    add-int/lit8 v10, v4, -0x2

    aget v9, v9, v10

    add-float/2addr v9, v5

    aput v9, v8, v4

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Points:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    aput v10, v8, v9

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    const/4 v9, 0x0

    const v10, 0x3f333333    # 0.7f

    aput v10, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    const/4 v9, 0x0

    const v10, 0x3f333333    # 0.7f

    aput v10, v8, v9

    const/4 v4, 0x1

    :goto_2
    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPressures:[F

    add-int/lit8 v10, v4, -0x1

    aget v9, v9, v10

    const v10, 0x3ccccccd    # 0.025f

    sub-float/2addr v9, v10

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :goto_3
    sget v8, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->OILBRUSH2_NUM_POINTS:I

    if-ge v4, v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOilBrush2Pressures:[F

    add-int/lit8 v10, v4, -0x1

    aget v9, v9, v10

    const v10, 0x3ccccccd    # 0.025f

    sub-float/2addr v9, v10

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setEraserEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mIsEraserEnabled:Z

    return-void
.end method

.method protected setOriginalStrokeSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mOriginalStrokeWidth:F

    return-void
.end method

.method public setPenPlugin(Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPenType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mPenType:Ljava/lang/String;

    return-void
.end method

.method public setStrokeAdvancedSetting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mAdvancedSetting:Ljava/lang/String;

    return-void
.end method

.method public setStrokeAlpha(I)V
    .locals 3

    shl-int/lit8 v0, p1, 0x18

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mColor:I

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mColor:I

    return-void
.end method

.method public setStrokeEndMargin(I)V
    .locals 0

    sput p1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->PREVIEW_STROKE_END_MARGIN:I

    return-void
.end method

.method public setStrokePointNum(I)V
    .locals 0

    sput p1, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->NUM_POINTS:I

    return-void
.end method

.method public setStrokeSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->mStrokeWidth:F

    return-void
.end method
