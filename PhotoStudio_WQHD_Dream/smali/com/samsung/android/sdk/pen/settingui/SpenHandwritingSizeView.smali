.class public Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;
.super Landroid/widget/RelativeLayout;
.source "SpenHandwritingSizeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;
    }
.end annotation


# static fields
.field private static PREVIEW_STROKE_END_MARGIN:I = 0x0

.field private static final SCREEN_UNIT:F = 360.0f

.field private static final SCREEN_WIDTH_WQHD:I = 0x5a0

.field private static final SCREEN_WIDTH_WQHD_TB:I = 0x5f0

.field private static final SCREEN_WIDTH_WQHD_TB_SPECIAL:I = 0x5fc

.field private static final SDK_VERSION:I

.field private static SIZE_RATIO:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "SpenHandwritingSizeView"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

.field mCanvasSize:I

.field private mContext:Landroid/content/Context;

.field private mCustom_imagepath:Ljava/lang/String;

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

.field private mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

.field private mPenSizeList:[I

.field mSelectedIndex:I

.field private mSizeButton:[Landroid/widget/RelativeLayout;

.field private final mSizeClickListenter:Landroid/view/View$OnClickListener;

.field private mSizeSelector:Landroid/widget/ImageView;

.field private mTotalLayout:Landroid/widget/RelativeLayout;

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->SDK_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSelectedIndex:I

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeClickListenter:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCustom_imagepath:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCustom_imagepath:Ljava/lang/String;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginInfoList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenSizeList:[I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    :goto_0
    const-string v2, "SpenHandwritingSizeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canvas size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    const/16 v3, 0x5f0

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    const/16 v3, 0x5fc

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v2, 0x5a0

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->handwriting_size_setting_preview_end_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->PREVIEW_STROKE_END_MARGIN:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->handwriting_size_setting_ratio:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    sput v2, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->SIZE_RATIO:F

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->initView()V

    return-void

    :cond_2
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenSizeList:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeSelector:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 15

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/spen/R$dimen;->handwriting_total_layout_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/spen/R$dimen;->handwriting_size_setting_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v8, "setting_handwriting_size_view"

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x5

    new-array v7, v7, [Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_1:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    aput-object v7, v8, v9

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setNextFocusLeftId(I)V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_2:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x2

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_3:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x3

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_4:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_5:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    aput-object v7, v8, v9

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->SDK_VERSION:I

    const/16 v11, 0x13

    if-le v10, v11, :cond_0

    const/4 v10, 0x2

    new-array v6, v10, [[I

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x101009c

    aput v13, v11, v12

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, -0x101009c

    aput v13, v11, v12

    aput-object v11, v6, v10

    const/4 v10, 0x2

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/16 v11, 0x29

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v2, v10

    new-instance v10, Landroid/graphics/drawable/RippleDrawable;

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v14, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v14}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-direct {v10, v11, v12, v13}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    iput-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_1:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_2:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    const/4 v9, 0x2

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_3:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    const/4 v9, 0x3

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_4:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    const/4 v9, 0x4

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v10, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_5:I

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v5, v8, v7

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v5, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setPenPlugin(Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v8, Lcom/samsung/android/spen/R$id;->handwriting_size_selector:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeSelector:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeSelector:Landroid/widget/ImageView;

    const-string v9, "memo_handwriting_setting_selected"

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprImageViewDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeSelector:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeSelector:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "SpenHandwritingSizeView"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    return-void
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginInfoList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginInfoList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMinSettingValue()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginInfoList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMaxSettingValue()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPluginInfoList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getAdvancedSetting()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, 0x43b40000    # 360.0f

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mCanvasSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x43b40000    # 360.0f

    div-float v18, v18, v19

    sget v19, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->SIZE_RATIO:F

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v11

    sub-int v18, v11, v13

    div-int/lit8 v6, v18, 0x5

    const-string v18, "SpenHandwritingSizeView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPenInfo name="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "SpenHandwritingSizeView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPenInfo size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "SpenHandwritingSizeView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPenInfo minValue="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "SpenHandwritingSizeView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPenInfo maxValue="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setPenType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setStrokeColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    const/16 v19, 0x4c

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setStrokeAlpha(I)V

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setStrokeAdvancedSetting(Ljava/lang/String;)V

    :cond_1
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    move v15, v11

    :goto_1
    const-string v18, "SpenHandwritingSizeView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPenInfo i="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setOriginalStrokeSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    int-to-float v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setStrokeSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenSizeList:[I

    move-object/from16 v18, v0

    aput v15, v18, v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setStrokePointNum(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    sget v19, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->PREVIEW_STROKE_END_MARGIN:I

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setStrokeEndMargin(I)V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    if-nez v8, :cond_5

    const-string v18, "SpenHandwritingSizeView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPenInfo - found !! index="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSelectedIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeSelector:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, "SpenHandwritingSizeView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPenInfo, onSizeChanged="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenSizeList:[I

    move-object/from16 v20, v0

    aget v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenSizeList:[I

    move-object/from16 v19, v0

    aget v19, v19, v7

    invoke-interface/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$ActionListener;->onSizeChanged(I)V

    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v7, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_3
    mul-int v18, v6, v7

    add-int v15, v13, v18

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->setStrokePointNum(I)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPreview;->invalidate()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v7, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/samsung/android/spen/R$string;->pen_string_not_selected:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->mSizeButton:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;)V

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
