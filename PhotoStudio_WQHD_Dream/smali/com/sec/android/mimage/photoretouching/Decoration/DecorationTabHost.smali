.class public Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;
.super Landroid/widget/TabHost;
.source "DecorationTabHost.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;,
        Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;
    }
.end annotation


# static fields
.field private static final APP_TAB_ELEVATION:I


# instance fields
.field private final colorControlActivated:I

.field private final indicator:Landroid/graphics/drawable/ShapeDrawable;

.field private final indicatorHeight:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private isAllCaps:Z

.field private isBold:Z

.field private isDecorationTab:Z

.field private final leftOffset:I

.field private listText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;

.field private final mContext:Landroid/content/Context;

.field private maxTabWidth:I

.field private position:I

.field private positionOffset:F

.field private scrollingState:I

.field private size:F

.field private final tabWidget:Landroid/widget/TabWidget;

.field private type:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;->FullScreenWidth:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->type:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    const/high16 v6, -0x80000000

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->maxTabWidth:I

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->scrollingState:I

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->position:I

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->positionOffset:F

    const/high16 v6, 0x41600000    # 14.0f

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->size:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->inflater:Landroid/view/LayoutInflater;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->listText:Ljava/util/HashMap;

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Device()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setBackgroundColor(I)V

    :goto_0
    iget v6, v3, Landroid/util/TypedValue;->data:I

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->colorControlActivated:I

    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->indicator:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->indicator:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1060019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/ShapeDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0805b5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->indicatorHeight:I

    const v6, 0x7f0805b6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->leftOffset:I

    const v6, 0x7f0805b4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v2, Landroid/widget/HorizontalScrollView;

    invoke-direct {v2, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v2, v9}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v6, Landroid/widget/TabWidget;

    invoke-direct {v6, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v11, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    const v7, 0x1020013

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setId(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6, v9}, Landroid/widget/TabWidget;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6, v9}, Landroid/widget/TabWidget;->setMeasureWithLargestChildEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setGravity(I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6, v9}, Landroid/widget/TabWidget;->setShowDividers(I)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x1020011

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setup()V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$1;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v10, v0

    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void

    :cond_1
    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->listener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;

    return-object v0
.end method

.method private updateIndicatorPosition(IF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->position:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->positionOffset:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->invalidate()V

    return-void
.end method


# virtual methods
.method public addTab(IZ)V
    .locals 12

    const/4 v11, 0x0

    const v10, 0x7f0a016b

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->type:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getLayoutId(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;Z)I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->inflater:Landroid/view/LayoutInflater;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7, v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v7, 0x7f0e0437

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Device()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isDecorationTab:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isAllCaps:Z

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->size:F

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00c7

    invoke-virtual {v7, v8, v11}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->listText:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_6

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f0206b7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x1020011

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC5Model()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isDecorationTab:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isAllCaps:Z

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->size:F

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00c8

    invoke-virtual {v7, v8, v11}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Device()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isDecorationTab:Z

    if-nez v7, :cond_2

    :cond_5
    const v7, 0x7f020738

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const v8, 0x10100a7

    aput v8, v7, v9

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->colorControlActivated:I

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/16 v7, 0xb4

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_7

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public addTab(Landroid/view/View;)V
    .locals 5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const v2, 0x7f0206b5

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x1020011

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->colorControlActivated:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isDecorationTab:Z

    if-nez v8, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->indicator:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->position:I

    invoke-virtual {v8, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->position:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->position:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    if-nez v4, :cond_4

    move v5, v7

    :goto_2
    int-to-float v8, v5

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->positionOffset:F

    mul-float/2addr v8, v9

    int-to-float v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->positionOffset:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v3, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->positionOffset:F

    int-to-float v10, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v2, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getHeight()I

    move-result v1

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->indicatorHeight:I

    sub-int v8, v1, v8

    add-int v9, v2, v3

    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_2
.end method

.method protected getLayoutId(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;Z)I
    .locals 3

    const v0, 0x7f03008d

    sget-object v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$2;->$SwitchMap$com$sec$android$mimage$photoretouching$Decoration$DecorationTabHost$Type:[I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f03008e

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    if-nez p2, :cond_0

    const v0, 0x7f0300cc

    goto :goto_0

    :cond_0
    const v0, 0x7f0300cd

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDecorationTab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isDecorationTab:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->listText:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->listText:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->type:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;->Centered:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->maxTabWidth:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->maxTabWidth:I

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->maxTabWidth:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->maxTabWidth:I

    if-lez v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->maxTabWidth:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->scrollingState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->updateIndicatorPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->scrollingState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->updateIndicatorPosition(IF)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTab(I)V

    return-void
.end method

.method public setOnTabChangeListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->listener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;

    return-void
.end method

.method public setTab(I)V
    .locals 4

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isBold:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e0437

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const v3, 0x7f0a016c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f0a016b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setCurrentTab(I)V

    return-void
.end method

.method public setTabsTextAllCaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isAllCaps:Z

    return-void
.end method

.method public setTabsTextBoldOnSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isBold:Z

    return-void
.end method

.method public setTabsTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->size:F

    return-void
.end method

.method public setType(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->type:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$2;->$SwitchMap$com$sec$android$mimage$photoretouching$Decoration$DecorationTabHost$Type:[I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setGravity(I)V

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setPadding(IIII)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setGravity(I)V

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setPadding(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setGravity(I)V

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setPadding(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->tabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setGravity(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->leftOffset:I

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setPadding(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
