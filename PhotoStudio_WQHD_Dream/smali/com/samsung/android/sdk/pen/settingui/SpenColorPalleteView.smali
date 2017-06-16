.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;
.super Landroid/widget/RelativeLayout;
.source "SpenColorPaletteView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BUTTON_COLOR_DIM:I = 0x4d888888

.field private static final BUTTON_COLOR_NORMAL:I = -0x777778

.field private static final COLOR_BUTTON_MAX:I = 0xa

.field private static final COLOR_ITEM_NUM_MAX:I = 0x8

.field private static final COLOR_PALETTE_LAYOUT_VERSION:Ljava/lang/String; = "setting_color_palette_layout_v41"

.field private static final COLOR_SELECTOR:I = -0x50506

.field private static final COLOR_TABLE_NUM:I = 0x2

.field private static final EXCEPT_COLOR_SELECTOR:I = -0x777778

.field private static final IB_COLOR_BUTTON_ID:I = 0xb8305b

.field private static final IB_NEXT_COLOR_BUTTON_ID:I = 0xb8305a

.field private static final IB_PREVIOUS_COLOR_BUTTON_ID:I = 0xb83059

.field private static final SDK_VERSION:I

.field private static final mColorFocusStringPath:Ljava/lang/String; = "snote_color_focus"

.field private static final mColorGradientStringPath:Ljava/lang/String; = "snote_color_gradient"

.field private static final mColorSelectedStringPath:Ljava/lang/String; = "note_handwriting_setting_color_selected"

.field private static final mColorSpoidDimStringPath:Ljava/lang/String; = "snote_color_spoid_dim_sdk4"

.field private static final mColorSpoidStringPath:Ljava/lang/String; = "snote_color_spoid_sdk4"

.field private static final mNextStringPath:Ljava/lang/String; = "snote_color_palette_arrow_next"

.field private static final mPreviousStringPath:Ljava/lang/String; = "snote_color_palette_arrow_previous"


# instance fields
.field private NEXT_BUTTON_HEIGHT:I

.field private NEXT_BUTTON_WIDTH:I

.field private isTalkbackEnable:Z

.field private mBackButton:Landroid/widget/Button;

.field private mBackButtonImage:Landroid/widget/ImageView;

.field private final mBackPalletButtonClickListenter:Landroid/view/View$OnClickListener;

.field private final mColorButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private mColorButtons:[Landroid/widget/RelativeLayout;

.field private mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;

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

.field private mColorSelectedCursor:Landroid/view/View;

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

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedTable:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedItemIndex:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentColor:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentColorDescrition:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->isTalkbackEnable:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtonHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCustom_imagepath:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCustom_imagepath:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->color_pallete_next_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->NEXT_BUTTON_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$integer;->color_pallete_next_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->NEXT_BUTTON_HEIGHT:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->initView()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setListener()V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->isTalkbackEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->performColorClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    return v0
.end method

.method static synthetic access$308(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    return v0
.end method

.method static synthetic access$310(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorTable()V

    return-void
.end method

.method private initColorTable()V
    .locals 10

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    filled-new-array {v5, v8}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/spen/R$array;->spen_setting_v42_color_table_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    aput-object v3, v2, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/spen/R$array;->spen_setting_v42_color_table_2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_1

    :cond_1
    filled-new-array {v5, v9}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    filled-new-array {v5, v9}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/spen/R$array;->spen_setting_v42_color_table_string_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/spen/R$array;->spen_setting_v42_color_table_string_2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorDescriptionMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_5

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v8, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorDescriptionMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorTable()V

    return-void
.end method

.method private initView()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v12, "setting_color_palette_layout_v41"

    invoke-virtual {v11, v12}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    const/16 v12, 0x11

    if-lt v11, v12, :cond_0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setLayoutDirection(I)V

    :cond_0
    const/16 v11, 0xa

    new-array v11, v11, [Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v11, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v11}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButtonImage:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButtonImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v13, "snote_color_palette_arrow_previous"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->NEXT_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->NEXT_BUTTON_HEIGHT:I

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    const/16 v12, 0x13

    if-le v11, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v14, 0x29

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButtonImage:Landroid/widget/ImageView;

    const v12, 0x4d888888

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v4, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    const/16 v12, 0x11

    if-le v11, v12, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_previous:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ja"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/samsung/android/spen/R$string;->pen_string_back:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v1, Ljava/util/Locale;

    const-string v11, "pt"

    const-string v12, "BR"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_palette:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " de "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_previous:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    const v12, 0xb83059

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setId(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    const v12, 0xb8305b

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setNextFocusRightId(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButtonImage:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButtonImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v13, "snote_color_palette_arrow_next"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->NEXT_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->NEXT_BUTTON_HEIGHT:I

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    const/16 v12, 0x13

    if-le v11, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v14, 0x29

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButtonImage:Landroid/widget/ImageView;

    const v12, -0x777778

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    const/16 v12, 0x11

    if-le v11, v12, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ja"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_palette:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " de "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    const v12, 0xb8305a

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setId(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    const v12, 0xb8305f

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    const-string v13, "note_handwriting_setting_color_selected"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprViewBackground(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;

    const-string v13, "snote_color_focus"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprViewBackground(Landroid/view/View;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v3, v11, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v11, 0xb8305b

    add-int/2addr v11, v3

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setId(I)V

    if-eqz v3, :cond_7

    const/4 v11, 0x5

    if-ne v3, v11, :cond_c

    :cond_7
    const v11, 0xb83059

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusLeftId(I)V

    const v11, 0xb8305b

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    :goto_3
    const/4 v11, 0x5

    if-ge v3, v11, :cond_f

    const v11, 0xb8305b

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x5

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusDownId(I)V

    :goto_4
    sget v11, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    const/16 v12, 0x13

    if-le v11, v12, :cond_12

    const/16 v11, 0x8

    if-ne v3, v11, :cond_10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v14, 0x29

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v15, "snote_color_gradient"

    invoke-virtual {v14, v15}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aput-object v6, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_previous:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_previous:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_next:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/samsung/android/spen/R$string;->pen_string_color_set:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    const/4 v11, 0x4

    if-eq v3, v11, :cond_d

    const/16 v11, 0x9

    if-ne v3, v11, :cond_e

    :cond_d
    const v11, 0xb8305b

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusLeftId(I)V

    const v11, 0xb8305a

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    goto/16 :goto_3

    :cond_e
    const v11, 0xb8305b

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusLeftId(I)V

    const v11, 0xb8305b

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusRightId(I)V

    goto/16 :goto_3

    :cond_f
    const v11, 0xb8305b

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x5

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setNextFocusUpId(I)V

    goto/16 :goto_4

    :cond_10
    const/16 v11, 0x9

    if-ne v3, v11, :cond_11

    const/4 v11, 0x4

    new-array v10, v11, [[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const v14, 0x10100a7

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const v14, 0x101009c

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const v14, -0x10100a7

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const v14, -0x101009c

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x29

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v11, 0x4

    new-array v2, v11, [I

    const/4 v11, 0x0

    aput v8, v2, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v2, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v2, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v2, v11

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    new-instance v13, Landroid/content/res/ColorStateList;

    invoke-direct {v13, v10, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v15, "snote_color_spoid_sdk4"

    invoke-virtual {v14, v15}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getSprDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const-string v13, "snote_color_spoid_sdk4"

    invoke-virtual {v12, v11, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprImageViewDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v14, 0x29

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v15, "color_circle_shape"

    invoke-virtual {v14, v15}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_12
    const/16 v11, 0x8

    if-ne v3, v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v14, "snote_color_gradient"

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_13
    const/16 v11, 0x9

    if-ne v3, v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const-string v13, "snote_color_spoid_sdk4"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprViewBackground(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const-string v13, "snote_color_spoid_sdk4"

    invoke-virtual {v12, v11, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprImageViewDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v14, "color_circle_shape"

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->initColorTable()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mTotalLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private performColorClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorSelected(I)V

    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedTable:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    iput v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentColor:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentColorDescrition:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentColor:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentColorDescrition:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;->colorChanged(IILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorContentDescritionTableSet()V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setColorContentDescritionTableSet()V
    .locals 10

    const/16 v9, 0xa

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_color_tap_to_apply:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_5

    const/16 v5, 0x8

    if-ne v1, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_color_palette:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x9

    if-ne v1, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_color_picker_tts:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    if-ne v0, v5, :cond_4

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedItemIndex:I

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    aget-object v6, v6, v7

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private setColorSelected(I)V
    .locals 5

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedItemIndex:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x777778

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x50506

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private setColorTable()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedItemIndex:I

    if-ge v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedTable:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->SDK_VERSION:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

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
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorSelectedCursor:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

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

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

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

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackPalletButtonClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtonHoverListener:Landroid/view/View$OnHoverListener;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSetStringName:[[Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorContentDescritionTableSet:[[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getColorDescription(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorDescriptionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setColor(I)V
    .locals 9

    const v8, 0x4d888888

    const/16 v4, 0x8

    const/4 v7, 0x0

    const v6, -0x777778

    const/4 v5, 0x1

    const/high16 v3, -0x1000000

    or-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentColor:I

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorTableSet:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorSelected(I)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorContentDescritionTableSet()V

    return-void

    :cond_3
    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButtonImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_3
    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButtonImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_4
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorSelected(I)V

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mCurrentTable:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mSelectedTable:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->setColorTable()V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mBackButtonImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mNextButtonImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4
.end method

.method public setColorChangeListener(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$OnColorChangedListener;

    return-void
.end method

.method protected setColorFocusOnTalkback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->isTalkbackEnable:Z

    return-void
.end method

.method public setColorPickerEnable(Z)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "snote_color_spoid_sdk4"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprViewBackground(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "snote_color_spoid_dim_sdk4"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setSprViewBackground(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setColorSpuitEnable(Z)V
    .locals 2

    const/16 v1, 0x9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorButtons:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMontblancColorPalette(Z)V
    .locals 0

    return-void
.end method
