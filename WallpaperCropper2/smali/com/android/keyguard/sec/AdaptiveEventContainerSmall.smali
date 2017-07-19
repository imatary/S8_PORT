.class public Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;


# static fields
.field private static final MARGIN_LEFT_RIGHT_CENTER_CONTAINER:I = 0xf

.field static final TAG:Ljava/lang/String; = "AdaptiveEventContainerSmall"

.field private static final TEST_WEATHER:Z = false

.field private static final UPDATE_EMERGENCY_MESSAGE:I = 0x132e

.field private static final UPDATE_PEDO_MESSAGE:I = 0x132f

.field private static final UPDATE_WEATHER_MESSAGE:I = 0x1330

.field private static final WEATHER_CURRENT_CITY_ID:Ljava/lang/String; = "cityId:current"

.field private static mIsPedoShowing:Z


# instance fields
.field private mAdaptiveInfoArea:Landroid/widget/LinearLayout;

.field mContentObserver:Landroid/database/ContentObserver;

.field private mEmergencyContainer:Landroid/widget/LinearLayout;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIs4DigitOrDualClock:Z

.field private mIsHighLowTempModeEnable:Z

.field private mIsWeatherShowing:Z

.field private mPedContainer:Landroid/widget/LinearLayout;

.field private mSmallWeather:Landroid/view/View;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/WeatherImageArchiveFactory;->make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleEmergencyUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AbstractWeatherImageArchive;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAdditionalInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCPName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmergencyModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getKidsModeEnabled()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getLastSelLocation()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPedoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isPedoEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getProfileEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getShowInformation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getTemperatureUnit(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v1

    if-nez v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_c:I

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_f:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTemperatureUnitText(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "getTemperatureUnitText()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->tts_temp_celsius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->tts_temp_fahrenheit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v1, "AdaptiveEventContainerSmall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "-"

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method private getWeatherCityIconImageResources()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cityId:current"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getSystemLocation()I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/keyguard/R$drawable;->icon_location_unable:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/keyguard/R$drawable;->icon_location:I

    goto :goto_0
.end method

.method private getWeatherEnabled()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v2

    if-eq v2, v1, :cond_2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getWeatherTempUnitSmall(I)I
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "AdaptiveEventContainerSmall"

    const-string/jumbo v2, "getWeatherTempUnitSmall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v1

    if-nez v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_s_c:I

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_s_f:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleEmergencyUpdate()V
    .locals 2

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "handleEmergencyUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getEmergencyEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "emergencyEvent == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private handlePedoUpdate()V
    .locals 9

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "handlePedoUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v1, :cond_3

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "pedoEvent == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "pedoEvent view == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getShowInformation()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v5

    const-string/jumbo v6, "AdaptiveEventContainerSmall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handlePedoUpdate Show:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isPedoEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_7

    :cond_4
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    sget-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-nez v0, :cond_8

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    mPedoView= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    view= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_5
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "AdaptiveEventContainerSmall"

    const-string/jumbo v2, "    string is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const-string/jumbo v5, "AdaptiveEventContainerSmall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    string= "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " textview= "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 21

    const-string/jumbo v2, "AdaptiveEventContainerSmall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleWeatherUpdate() : mSmallWeather= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-nez v2, :cond_a

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v2, :cond_b

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->adaptive_weather_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->adaptive_weather_small_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v5, Lcom/android/keyguard/R$id;->adaptive_weather_small_temp:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v6, Lcom/android/keyguard/R$id;->adaptive_weather_small_unit:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v7, Lcom/android/keyguard/R$id;->adaptive_weather_city_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v8, Lcom/android/keyguard/R$id;->adaptive_weather_city_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v9, Lcom/android/keyguard/R$id;->adaptive_weather_latte_high_temp:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v10, Lcom/android/keyguard/R$id;->adaptive_weather_latte_low_temp:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v11, Lcom/android/keyguard/R$id;->adaptive_weather_small_high_temp:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v12, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_temp:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v13, Lcom/android/keyguard/R$id;->adaptive_weather_small_Separator:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v14, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_unit:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v15, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateLiftDustInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherIconImageResources(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez v7, :cond_c

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v4, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v7, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    if-nez v8, :cond_13

    :cond_3
    :goto_3
    if-nez v14, :cond_14

    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "ar"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    :cond_5
    const-string/jumbo v14, "AdaptiveEventContainerSmall"

    const-string/jumbo v15, "Current language is Arabic"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    const-string/jumbo v14, "-"

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    if-nez v14, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v14

    if-nez v14, :cond_1d

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v14

    if-nez v14, :cond_1e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_7
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v2, :cond_24

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateTemperatureFont()V

    return-void

    :cond_8
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getWidgetCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherCityIconImageResources()I

    move-result v3

    if-nez v3, :cond_e

    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setWidthWeatherCityName(Z)V

    goto/16 :goto_2

    :cond_d
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v4, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v7, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    if-nez v8, :cond_11

    :cond_10
    :goto_d
    if-nez v14, :cond_12

    :goto_e
    if-nez v3, :cond_4

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v14, -0xbbbbbc

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_5

    :cond_11
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v8, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v9, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto :goto_d

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v14, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto :goto_e

    :cond_13
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v8, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v9, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v14, v3, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v14, "fa"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_16
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    goto/16 :goto_7

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "AdaptiveEventContainerSmall"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "handleWeatherUpdate() High/Low only mode [high, low] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v18

    if-nez v18, :cond_19

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string/jumbo v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_18
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    add-int v3, v3, v16

    const/16 v16, 0x5

    move/from16 v0, v16

    if-gt v3, v0, :cond_1b

    const/4 v3, 0x1

    const/high16 v16, 0x41a00000    # 20.0f

    move/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v16, 0x41a00000    # 20.0f

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v16, 0x41a00000    # 20.0f

    move/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_10
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v3

    if-nez v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_19
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u00b0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_1a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    const/high16 v16, 0x42100000    # 36.0f

    move/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v16, 0x41f00000    # 30.0f

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v16, 0x42100000    # 36.0f

    move/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_10

    :cond_1b
    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    const/high16 v16, 0x41880000    # 17.0f

    move/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    const/high16 v16, 0x41880000    # 17.0f

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    const/high16 v16, 0x41880000    # 17.0f

    move/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_10

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v14, "\u00b0"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_1d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v14, "\u00b0"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    :cond_1e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_1f
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    if-nez v3, :cond_6

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    const-string/jumbo v3, "ar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v2

    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v6

    if-nez v6, :cond_22

    :goto_12
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_21
    const-string/jumbo v3, "fa"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\u00b0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\u00b0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_23
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_24
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0xbbbbbc

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_b
.end method

.method private inflateWeatherView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_adaptive_weather_small:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const-string/jumbo v1, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$4;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init()V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHProject()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getAdditionalInfoEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getEmergencyModeEnabled()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getKidsModeEnabled()Z

    move-result v5

    const-string/jumbo v6, "AdaptiveEventContainerSmall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init() : isAdditionalInfoEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isEmergencyModeEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isKidsMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    :cond_1
    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v5, "mAdaptiveInfoArea.setVisibility(View.GONE);"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_16

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_17

    :goto_1
    if-nez v4, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_5
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getShowInformation()Z

    move-result v4

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v6, "mWeatherView == null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_11

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v4, "mPedoView == null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_8
    if-nez v4, :cond_b

    :cond_9
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isShowInformation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", getWeatherEnabled()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-nez v0, :cond_f

    :cond_a
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWeatherContainer.setVisibility("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->sendAdaptiveEventWeatherClockCallback()V

    iget-object v6, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-nez v0, :cond_10

    move v0, v3

    :goto_9
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->inflateWeatherView()V

    goto/16 :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v5, :cond_9

    move v0, v1

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTrusted()Z

    move-result v0

    iget-boolean v6, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-nez v6, :cond_e

    :cond_d
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWeatherContainer.setVisibility("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getWidgetCount()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    move v0, v1

    goto/16 :goto_7

    :cond_10
    move v0, v2

    goto/16 :goto_9

    :cond_11
    if-nez v4, :cond_14

    :cond_12
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isPedometerExist()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move v0, v3

    :goto_c
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    goto/16 :goto_5

    :cond_14
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez v5, :cond_12

    move v0, v1

    goto :goto_b

    :cond_15
    sget-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_c

    :cond_16
    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_19
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, v3

    mul-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    float-to-int v1, v3

    mul-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method private setContentObservers()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_additional_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_additional_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_additional_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private updateLiftDustInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move v0, v5

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->adaptive_weather_dust_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez p1, :cond_5

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentLifeDust()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentLifeDust()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sget v4, Lcom/android/keyguard/R$drawable;->weather_widget_dust_plenty:I

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_4_bad:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_1
    sget v4, Lcom/android/keyguard/R$drawable;->weather_widget_dust_little:I

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_3_some_bad:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_2
    sget v4, Lcom/android/keyguard/R$drawable;->weather_widget_dust_veryhigh:I

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_5_very_bad:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateTemperatureFont()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getClockThemeFont()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "samsung-neo-num3L"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    move-object v3, v0

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_6

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_high_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_temp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->adaptive_weather_small_Separator:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v0, :cond_4

    :goto_2
    if-nez v1, :cond_5

    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method private useUniCodeTemperatureUnit()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getWeatherIconImageResources(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;->getImage(I)I

    move-result v0

    return v0
.end method

.method public isShowingWeatherInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setContentObservers()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v3, "onFinishInflate()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/keyguard/R$id;->adaptive_info_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->weather_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->ped_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->emergency_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public setWidthWeatherCityName(Z)V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_city_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherCityIconImageResources()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_max_width_3digit_clock_zero_without_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_max_width_3digit_clock_zero:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_min_width_4digit_clock_zero:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_min_width_4digit_clock_zero_without_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1
.end method

.method public toDigitString(I)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-gtz v0, :cond_0

    const-string/jumbo v0, "%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v3, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateAdaptiveContainer(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateContainer(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateAdaptiveContainer(I)V

    return-void
.end method

.method protected updateEmergencyContainer()V
    .locals 3

    const/16 v2, 0x132e

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "C updateEmergencyContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method protected updatePedoContainer()V
    .locals 3

    const/16 v2, 0x132f

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "C updatePedoContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public updateWeatherContainerVisible(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void
.end method

.method public updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 3

    const/16 v2, 0x1330

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method
