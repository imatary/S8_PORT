.class Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;
.super Landroid/widget/RelativeLayout;
.source "SpenHandwritingColorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BUTTON_COLOR_DIM:I = 0x4d888888

.field private static final BUTTON_COLOR_NORMAL:I = -0x777778

.field private static final COLOR_BUTTON_MAX:I = 0xa

.field private static final COLOR_ITEM_NUM_MAX:I = 0x9

.field private static final COLOR_PALETTE_LAYOUT_VERSION:Ljava/lang/String; = "setting_handwriting_color_selection_view"

.field private static final COLOR_SELECTOR:I = -0x50506

.field private static final COLOR_TABLE_NUM:I = 0x1

.field private static final EXCEPT_COLOR_SELECTOR:I = -0x50506

.field private static final IB_COLOR_BUTTON_ID:I = 0xb8305b

.field private static final IB_NEXT_COLOR_BUTTON_ID:I = 0xb8305a

.field private static final IB_PREVIOUS_COLOR_BUTTON_ID:I = 0xb83059

.field private static final SDK_VERSION:I

.field private static final mColorGradientStringPath:Ljava/lang/String; = "note_handwriting_setting_color_selected_custmize"

.field private static final mColorSpoidDimStringPath:Ljava/lang/String; = "snote_color_spoid_dim_sdk4"

.field private static final mColorSpoidStringPath:Ljava/lang/String; = "snote_color_spoid_sdk4"

.field private static final mNextStringPath:Ljava/lang/String; = "snote_color_palette_arrow_next"

.field private static final mPreviousStringPath:Ljava/lang/String; = "snote_color_palette_arrow_previous"


# instance fields
.field private ARROW_SIZE:I

.field private isTalkbackEnable:Z

.field private mBackButton:Landroid/widget/Button;

.field private mBackButtonImage:Landroid/widget/ImageView;

.field private final mBackPalletButtonClickListenter:Landroid/view/View$OnClickListener;

.field private final mColorButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private mColorButtons:[Landroid/widget/RelativeLayout;

.field private mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

.field protected mColorContentDescritionTableSet:[[Ljava/lang/String;

.field private mColorDescriptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mColorFocusedCursor:Landroid/view/View;

.field private final mColorKeyListener:Landroid/view/View$OnKeyListener;

.field private mColorSelectedCursor:Landroid/widget/ImageView;

.field private mColorTableSet:[[I

.field private mColorTableSetStringName:[[Ljava/lang/String;

.field private final mColorTouchListener:Landroid/view/View$OnTouchListener;

.field private mCurrentColor:I

.field private mCurrentColorDescrition:Ljava/lang/String;

.field private mCurrentTable:I

.field private final mCustom_imagepath:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonImage:Landroid/widget/ImageView;

.field private final mNextPalletButtonClickListenter:Landroid/view/View$OnClickListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedItemIndex:I

.field private mSelectedTable:I

.field private mTotalLayout:Landroid/widget/RelativeLayout;

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedTable:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedItemIndex:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentColor:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentColorDescrition:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->isTalkbackEnable:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtonHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCustom_imagepath:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCustom_imagepath:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->handwriting_color_setting_arrow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->ARROW_SIZE:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->initView()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setListener()V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->isTalkbackEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusedCursor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->performColorClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    return v0
.end method

.method static synthetic access$308(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    return v0
.end method

.method static synthetic access$310(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorTable()V

    return-void
.end method

.method private initColorTable()V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x1

    filled-new-array {v5, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/spen/R$array;->spen_setting_handwriting_color_table_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    aput-object v3, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    filled-new-array {v5, v8}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    filled-new-array {v5, v8}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/spen/R$array;->spen_setting_handwriting_color_table_string_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorDescriptionMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorDescriptionMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorTable()V

    return-void
.end method

.method private initView()V
    .locals 13

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v7, "setting_handwriting_color_selection_view"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setLayoutDirection(I)V

    :cond_0
    const/16 v6, 0xa

    new-array v6, v6, [Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButtonImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButtonImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v8, "snote_color_palette_arrow_previous"

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->ARROW_SIZE:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->ARROW_SIZE:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    const/16 v7, 0x13

    if-le v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v9, 0x29

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButtonImage:Landroid/widget/ImageView;

    const v7, 0x4d888888

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v1, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    const/16 v7, 0x11

    if-le v6, v7, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_previous:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    const v7, 0xb83059

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    const v7, 0xb8305b

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setNextFocusRightId(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButtonImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButtonImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v8, "snote_color_palette_arrow_next"

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->ARROW_SIZE:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->ARROW_SIZE:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    const/16 v7, 0x13

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v9, 0x29

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButtonImage:Landroid/widget/ImageView;

    const v7, -0x777778

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    const/16 v7, 0x11

    if-le v6, v7, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    const v7, 0xb8305a

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    const v7, 0xb8305f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    const-string v8, "note_handwriting_setting_color_selected"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprImageViewDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    const v7, -0x50506

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusedCursor:Landroid/view/View;

    const/4 v0, 0x0

    :goto_2
    const/16 v6, 0xa

    if-ge v0, v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v6, 0xb8305b

    add-int/2addr v6, v0

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    if-eqz v0, :cond_3

    const/4 v6, 0x5

    if-ne v0, v6, :cond_8

    :cond_3
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusLeftId(I)V

    const v6, 0xb8305b

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    :goto_3
    const/4 v6, 0x5

    if-ge v0, v6, :cond_b

    const v6, 0xb8305b

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusDownId(I)V

    :goto_4
    sget v6, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    const/16 v7, 0x13

    if-le v6, v7, :cond_d

    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v8, 0x29

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v10, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v10}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-direct {v6, v7, v8, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0x9

    if-ne v0, v6, :cond_c

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v9, 0x29

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v10, "note_handwriting_setting_color_selected_custmize"

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aput-object v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_previous:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_previous:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x4

    if-eq v0, v6, :cond_9

    const/16 v6, 0x9

    if-ne v0, v6, :cond_a

    :cond_9
    const v6, 0xb8305b

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusLeftId(I)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    goto/16 :goto_3

    :cond_a
    const v6, 0xb8305b

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusLeftId(I)V

    const v6, 0xb8305b

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    goto/16 :goto_3

    :cond_b
    const v6, 0xb8305b

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusUpId(I)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setNextFocusDownId(I)V

    goto/16 :goto_4

    :cond_c
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v9, 0x29

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v10, "color_circle_shape"

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_d
    const/16 v6, 0x9

    if-ne v0, v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v9, "note_handwriting_setting_color_selected_custmize"

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v9, "color_circle_shape"

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->initColorTable()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private performColorClick(Landroid/view/View;)V
    .locals 4

    const v3, -0x50506

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorSelected(I)V

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedTable:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentColor:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentColorDescrition:Ljava/lang/String;

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentColor:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentColorDescrition:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;->colorChanged(IILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorContentDescritionTableSet()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setColorContentDescritionTableSet()V
    .locals 9

    const/16 v8, 0xa

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_color_tap_to_apply:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    const/16 v4, 0x9

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_color_palette:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedItemIndex:I

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    aget-object v5, v5, v6

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private setColorSelected(I)V
    .locals 4

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedItemIndex:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setColorTable()V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedItemIndex:I

    if-ge v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedTable:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->SDK_VERSION:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private setListener()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mNextPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mBackPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSetStringName:[[Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getColorDescription(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorDescriptionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setColor(I)V
    .locals 7

    const/16 v6, 0x9

    const v5, -0x50506

    const/high16 v3, -0x1000000

    or-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentColor:I

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v0, v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorTableSet:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    if-ne p1, v3, :cond_2

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    move v1, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    if-nez v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorSelectedCursor:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorSelected(I)V

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorContentDescritionTableSet()V

    return-void

    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorSelected(I)V

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mCurrentTable:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mSelectedTable:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColorTable()V

    goto :goto_3
.end method

.method public setColorChangeListener(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;

    return-void
.end method

.method protected setColorFocusOnTalkback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->isTalkbackEnable:Z

    return-void
.end method

.method public setColorPickerEnable(Z)V
    .locals 5

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v3, "snote_color_spoid_sdk4"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "snote_color_spoid_dim_sdk4"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprViewBackground(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMontblancColorPalette(Z)V
    .locals 0

    return-void
.end method

.method public setNextFocus(I)I
    .locals 4

    const/16 v3, 0x9

    const-string v0, "SpenHandwritingColorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextFocus id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    goto :goto_0
.end method
