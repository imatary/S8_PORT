.class public Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;
.super Ljava/lang/Object;
.source "EditableStickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WeatherInfo"
.end annotation


# static fields
.field private static final WEATHER_INFO_TRUSTED:I = 0xc8


# instance fields
.field private mCurrentCityId:Ljava/lang/String;

.field private mCurrentTemperature:F

.field private mHighTemperature:F

.field private mIconNumber:I

.field private mLowTemperature:F

.field private mTempScale:I

.field private mTrusted:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mIconNumber:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentTemperature:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mTempScale:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mHighTemperature:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mLowTemperature:F

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mTrusted:Z

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->getWeatherString(I)I

    move-result v0

    return v0
.end method

.method private getWeatherString(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f0703f4

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0703dd

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0703de

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0703df

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0703e0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0703e1

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0703e2

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0703e3

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0703e4

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0703e5

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0703e6

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0703e7

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0703e8

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0703e9

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0703ea

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0703eb

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0703ec

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0703ed

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0703ee

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0703ef

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0703f0

    goto :goto_0

    :pswitch_14
    const v0, 0x7f0703f1

    goto :goto_0

    :pswitch_15
    const v0, 0x7f0703f2

    goto :goto_0

    :pswitch_16
    const v0, 0x7f0703f3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method protected dump()V
    .locals 0

    return-void
.end method

.method protected getCurrentCityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentTemperature:F

    return v0
.end method

.method protected getHighTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mHighTemperature:F

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mIconNumber:I

    return v0
.end method

.method protected getLowTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mLowTemperature:F

    return v0
.end method

.method protected getTempScale()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mTempScale:I

    return v0
.end method

.method protected isTrusted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mTrusted:Z

    return v0
.end method

.method protected setCurrentCityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-void
.end method

.method protected setCurrentTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentTemperature:F

    return-void
.end method

.method protected setHighTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mHighTemperature:F

    return-void
.end method

.method protected setIconNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mIconNumber:I

    return-void
.end method

.method protected setLowTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mLowTemperature:F

    return-void
.end method

.method protected setTempScale(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mTempScale:I

    return-void
.end method

.method protected setTrusted(I)V
    .locals 3

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mTrusted:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mTrusted:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "EditableStickerUtil"

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq p1, v2, :cond_0

    goto :goto_0
.end method
