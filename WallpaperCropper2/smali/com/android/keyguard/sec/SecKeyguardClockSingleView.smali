.class public Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.super Landroid/widget/LinearLayout;
.source "Unknown"


# static fields
.field private static final FONT_SIZE_EASY_MODE_KOREAN_SINGLE_DATE:I = 0x12

.field private static final FONT_SIZE_EASY_MODE_KOREAN_SINGLE_TIME:I = 0x46

.field private static final FONT_SIZE_EASY_MODE_SINGLE_DATE:I = 0x14

.field protected static final MARGIN_RATIO_FOR_NUM45_LEFT:F = 15.0f

.field protected static final MARGIN_RATIO_LEFT:F = 50.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x67

.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field private static final MSG_SINGLE_CLOCK_SETTINGS_CHANGED:I = 0x66

.field private static final TAG:Ljava/lang/String; = "SecKeyguardClockSingleView"

.field public static mBatteryLevel:I


# instance fields
.field private mAmpmKorTypeface:Landroid/graphics/Typeface;

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

.field private mLocale:Ljava/util/Locale;

.field private mOldClockText:Ljava/lang/String;

.field private mShadowImageView:Landroid/widget/ImageView;

.field private mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleClockContainer:Landroid/view/View;

.field private mSingleClockSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field protected mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mBatteryLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addTextChangedListenerForClockTimeMargin()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    return-void
.end method

.method private applyFontEffect()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "SecKeyguardClockSingleView"

    const-string/jumbo v1, "font effect info: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "SecKeyguardClockSingleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "font effect info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/FontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/FontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 4

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method private isLeftKoreanAMPM()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    return v0
.end method

.method private isShowDateOn()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onScreenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "SecKeyguardClockSingleView"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onScreenTurnedOn()V
    .locals 2

    const-string/jumbo v0, "SecKeyguardClockSingleView"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->viewToShadow()V

    goto :goto_0
.end method

.method private setClockContentDesciption()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setDateContentDescriptionPlusFullDate(Landroid/view/View;)V

    return-void

    :cond_1
    const-string/jumbo v1, "ko"

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_1
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setDateContentDescriptionPlusFullDate(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_date_and_year"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_show_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_clock_size"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/16 v2, 0x67

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v1, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_ampm_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v0, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v0, "/system/fonts/SamsungSans-Light.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    :goto_4
    const-string/jumbo v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->addTextChangedListenerForClockTimeMargin()V

    return-void

    :cond_1
    const-string/jumbo v0, "/system/fonts/SamsungNeoNumCond-3T.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v0, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v0, "/system/fonts/SamsungKorean.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->applyFontEffect()V

    goto :goto_2

    :cond_4
    sget v0, Lcom/android/keyguard/R$id;->shadow_imageview:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x4

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    new-instance v0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_6
    move v0, v2

    goto :goto_8

    :cond_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecKeyguardClockSingleView"

    const-string/jumbo v1, "onLayout changed. shadow init."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->intialize()V

    goto :goto_0
.end method

.method protected setClockStyle()V
    .locals 9

    const v8, -0xbbbbbc

    const/high16 v7, -0x80000000

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getClockThemeFont()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    :goto_0
    if-nez v0, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSystemThemeFont()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_8

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getClockSize(Landroid/content/Context;)I

    move-result v1

    const-string/jumbo v3, "ko"

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_1
    :goto_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateTimeFormat()V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-nez v3, :cond_c

    int-to-float v3, v1

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_5
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "ko"

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    :goto_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v0, :cond_14

    :cond_3
    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1b

    :goto_9
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    :goto_a
    return-void

    :cond_4
    const-string/jumbo v1, "SecKeyguardClockSingleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clockThemeFont: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v1, "SecKeyguardClockSingleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemThemeFont: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_3

    :cond_9
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v1, 0x46

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-nez v3, :cond_b

    int-to-float v3, v1

    const/high16 v4, 0x41700000    # 15.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    :cond_b
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_singleclock_first_digit_one_margin_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    :cond_c
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    :goto_b
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :goto_c
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_7

    :cond_11
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v1, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    goto :goto_b

    :cond_12
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_c

    :cond_13
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_6

    :cond_14
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isShowDateOn()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_8

    :cond_15
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ko"

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v0, "/system/fonts/SamsungKorean.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_17

    :goto_d
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    goto/16 :goto_8

    :cond_17
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_d

    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    goto/16 :goto_a

    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1a

    :goto_e
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    goto/16 :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public updateLongShadowImageViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateShadowViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->viewToShadow()V

    goto :goto_0
.end method

.method public updateMarginPaddingTimeIfTheme(Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_margin_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->kg_singleclock_ampm_margin_start:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez p1, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->isLeftKoreanAMPM()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v6, v6, v6, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setPadding(IIII)V

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleClockContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v3, v6, v4, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setPadding(IIII)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1
.end method
