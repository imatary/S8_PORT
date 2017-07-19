.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/view/ViewGroup;
.source "Unknown"


# static fields
.field private static mDefaultFont:Z

.field private static mNumTypeface:Landroid/graphics/Typeface;

.field static sKlondike:[Ljava/lang/String;

.field private static sTfkt:Landroid/graphics/Typeface;


# instance fields
.field private mDigit:I

.field private mDigitImage:Landroid/widget/ImageView;

.field private mDigitText:Landroid/widget/TextView;

.field private mEnableHaptics:Z

.field private mHandler:Landroid/os/Handler;

.field private mKlondikeText:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/os/PowerManager;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewResId:I

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    sput-object v1, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    sput-object v1, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    iput-boolean v1, p0, Lcom/android/keyguard/NumPadKey;->mUseBlackTextOnWhiteWallpaper:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/NumPadKey;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mUseBlackTextOnWhiteWallpaper:Z

    sget-object v0, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    :try_start_0
    sget v0, Lcom/android/keyguard/R$styleable;->NumPadKey_digit:I

    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    sget v0, Lcom/android/keyguard/R$styleable;->NumPadKey_textView:I

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v0, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/android/keyguard/ObscureSpeechDelegate;

    invoke-direct {v0, p1}, Lcom/android/keyguard/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    sget v3, Lcom/android/keyguard/R$layout;->keyguard_num_pad_key:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->digit_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNumericThemeFont()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    if-eqz v0, :cond_5

    :goto_1
    sget-object v0, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    :goto_3
    sget v0, Lcom/android/keyguard/R$id;->klondike_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    sget-object v0, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    if-nez v0, :cond_8

    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->updateBlackTextOnWhiteWallpaper()V

    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-gez v0, :cond_9

    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_ripple_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_image_pad_key:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->digit_image:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    packed-switch v0, :pswitch_data_0

    :goto_6
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_3:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_4:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_5:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_6:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_7:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_8:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_9:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_number_image_0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_4
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    sput-boolean v1, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "/system/fonts/SamsungSans-Num3Lv.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    sput-boolean v2, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->theme_pin_klondike_font:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_4

    :cond_9
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v0, :cond_a

    :goto_7
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$array;->lockscreen_num_pad_klondike:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/NumPadKey;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/NumPadKey;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/NumPadKey;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateRippleSize(II)V
    .locals 6

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->num_pad_ripple_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->performHapticFeedback(II)Z

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    new-instance v0, Lcom/android/keyguard/NumPadKey$2;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/NumPadKey$2;-><init>(Lcom/android/keyguard/NumPadKey;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getWidth()I

    move-result v4

    div-int/lit8 v7, v4, 0x2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int v6, v4, v5

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, v7, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    add-int v4, v5, v0

    add-int/2addr v1, v6

    move v10, v4

    move v4, v5

    move v5, v1

    move v1, v10

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v8

    if-nez v8, :cond_9

    :cond_1
    iget-object v8, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v8, v4, v6, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    :goto_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v4

    if-nez v4, :cond_c

    sub-int v3, v5, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    move v1, v3

    :goto_4
    add-int/2addr v2, v0

    move v6, v1

    move v1, v2

    :cond_2
    :goto_5
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_6
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->keyguard_numpad_key_padding_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_7
    add-int v6, v4, v1

    div-int/lit8 v1, v0, 0x2

    sub-int v5, v7, v1

    add-int v1, v5, v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v8

    if-nez v8, :cond_8

    move v10, v5

    move v5, v6

    move v6, v4

    move v4, v10

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v5

    move v5, v1

    move v1, v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v1, v1, 0x2

    move v10, v5

    move v5, v6

    move v6, v4

    move v4, v10

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v4, v6, v1, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v4

    goto/16 :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_numpad_key_klondike_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int v6, v5, v0

    add-int v0, v6, v3

    add-int/lit8 v5, v0, 0x4

    div-int/lit8 v0, v2, 0x2

    sub-int v0, v7, v0

    add-int v1, v0, v2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x4

    add-int v5, v4, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    move v1, v4

    goto/16 :goto_4

    :cond_d
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_6
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey;->measureChildren(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->updateRippleSize(II)V

    return-void
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x34000000    # -3.3554432E7f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2, v7, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0, v7, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_klondike_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0
.end method

.method public userActivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
