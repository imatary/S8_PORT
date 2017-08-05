.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mIldCountry:Landroid/widget/TextView;

.field private mIldRate:Landroid/widget/TextView;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mRateContainer:Landroid/view/ViewGroup;

.field private mRippleColor:Landroid/content/res/ColorStateList;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    sget-object v1, Lcom/android/phone/common/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0032

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f1000ca
        0x7f1000b6
        0x7f1000b8
        0x7f1000ba
        0x7f1000bc
        0x7f1000be
        0x7f1000c0
        0x7f1000c2
        0x7f1000c4
        0x7f1000c6
        0x7f1000c8
        0x7f1000cc
    .end array-data
.end method

.method private getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setupKeypad()V
    .locals 25

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string/jumbo v21, "fa"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    :goto_0
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v21, 0x7f1000d4

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v21, 0x7f1000d5

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    const v22, 0x7f1000cc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const v21, 0x7f0d0218

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f02000f

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-virtual {v7, v13}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v11, :cond_1

    aget v21, v9, v8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_2
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static/range {v21 .. v21}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    const v22, 0x7f1000c8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const v21, 0x7f0d0217

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    goto :goto_2

    :cond_4
    int-to-long v0, v8

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    aget v21, v9, v8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    new-instance v21, Landroid/text/style/TtsSpan$VerbatimBuilder;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v13, v19

    goto/16 :goto_2

    :cond_5
    const v21, 0x7f1000b6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v21, 0x7f0d0229

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    const v21, 0x7f1000ca

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v21, 0x7f0d0228

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f0d0219
        0x7f0d021a
        0x7f0d021b
        0x7f0d021c
        0x7f0d021d
        0x7f0d021e
        0x7f0d021f
        0x7f0d0220
        0x7f0d0221
        0x7f0d0222
        0x7f0d0223
        0x7f0d0224
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    const v1, 0x7f1000df

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const v1, 0x7f1000d3

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v1, 0x7f1000d9

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    const v1, 0x7f1000da

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f1000dc

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldCountry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f1000dd

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldRate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
