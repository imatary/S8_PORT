.class public Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;
.super Ljava/lang/Object;
.source "WatermarkTextLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;,
        Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;,
        Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;
    }
.end annotation


# static fields
.field private static final CHINESE_NUMBER:[Ljava/lang/String;

.field private static final DEFAULT_LINE_SPACE:I = 0x5

.field private static final DEFAULT_SHADOW_COLOR:I

.field private static final DEFAULT_STROKE_COLOR:I

.field private static final DEFAULT_STROKE_WIDTH:F = 1.0f

.field private static final DEFAULT_TEXT_PADDING:I = 0x1

.field private static final SHOW_TEXT_RECT:Z = false

.field private static final TAG:Ljava/lang/String; = "WatermarkTextLoader"

.field private static mInstance:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

.field private static mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

.field private static mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

.field private static mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;


# instance fields
.field private mHansRegularTypeface:Landroid/graphics/Typeface;

.field private mKaitiTypeface:Landroid/graphics/Typeface;

.field private mMiaoTypeface:Landroid/graphics/Typeface;

.field private mRobotoBlackTypeface:Landroid/graphics/Typeface;

.field private mRobotoLightTypeface:Landroid/graphics/Typeface;

.field private mRobotoRegularTypeface:Landroid/graphics/Typeface;

.field private mShaonvTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x7f0d000c

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->CHINESE_NUMBER:[Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->DEFAULT_SHADOW_COLOR:I

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->DEFAULT_STROKE_COLOR:I

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->CHINESE_NUMBER:[Ljava/lang/String;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->clear()V

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->clear()V

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mInstance:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    return-void
.end method

.method private static getChinaNumString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v6

    const-string v4, "\u4e00"

    aput-object v4, v1, v7

    const-string v4, "\u4e8c"

    aput-object v4, v1, v8

    const-string v4, "\u4e09"

    aput-object v4, v1, v9

    const-string v4, "\u56db"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "\u4e94"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "\u516d"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "\u4e03"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "\u516b"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "\u4e5d"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v6

    const-string v4, "\u5341"

    aput-object v4, v3, v7

    const-string v4, "\u5eff"

    aput-object v4, v3, v8

    const-string v4, "\u4e09\u5341"

    aput-object v4, v3, v9

    const-string v4, "\u56db\u5341"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "\u4e94\u5341"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "\u516d\u5341"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "\u4e03\u5341"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "\u516b\u5341"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "\u4e5d\u5341"

    aput-object v5, v3, v4

    const-string v2, ""

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v0, v4

    if-gez v0, :cond_0

    const-string v2, "\u8d1f"

    neg-int v0, v0

    :cond_0
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/16 v4, 0x63

    if-le v0, v4, :cond_2

    const-string v4, "\u5341\u516d"

    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v5, v0, 0xa

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int/lit8 v5, v0, 0xa

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mInstance:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    invoke-direct {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mInstance:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mInstance:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    return-object v0
.end method

.method private getWatermarkTextFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 4

    packed-switch p2, :pswitch_data_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoLightTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoLightTypeface:Landroid/graphics/Typeface;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoLightTypeface:Landroid/graphics/Typeface;

    :goto_0
    return-object v2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoRegularTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoRegularTypeface:Landroid/graphics/Typeface;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoRegularTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoBlackTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoBlack()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoBlackTypeface:Landroid/graphics/Typeface;

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoBlackTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoLightTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoLightTypeface:Landroid/graphics/Typeface;

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mRobotoLightTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mHansRegularTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getHansRegular()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mHansRegularTypeface:Landroid/graphics/Typeface;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mHansRegularTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mShaonvTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.shaonv"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Shaonv.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mShaonvTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mShaonvTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mShaonvTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mKaitiTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.kaiti"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Kaiti.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mKaitiTypeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mKaitiTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mKaitiTypeface:Landroid/graphics/Typeface;

    goto :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mMiaoTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_7

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.miao"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Miao.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mMiaoTypeface:Landroid/graphics/Typeface;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mMiaoTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mMiaoTypeface:Landroid/graphics/Typeface;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public drawText(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 35

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textLeft:F

    move/from16 v31, v0

    mul-float v7, v31, p6

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textTop:F

    move/from16 v31, v0

    mul-float v8, v31, p6

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textWidth:F

    move/from16 v31, v0

    mul-float v31, v31, p6

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textHeight:F

    move/from16 v31, v0

    mul-float v31, v31, p6

    move/from16 v0, v31

    float-to-int v10, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->fontSize:F

    move/from16 v31, v0

    mul-float v9, v31, p6

    const/16 v22, 0x1

    const/16 v16, 0x0

    move/from16 v18, p6

    move/from16 v19, p6

    move/from16 v20, p6

    sget v17, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->DEFAULT_SHADOW_COLOR:I

    sget v23, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->DEFAULT_STROKE_COLOR:I

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textColor:I

    move/from16 v31, v0

    const/high16 v32, -0x1000000

    or-int v26, v31, v32

    mul-float v7, v7, p7

    mul-float v8, v8, p7

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, p7

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    int-to-float v0, v10

    move/from16 v31, v0

    mul-float v31, v31, p7

    move/from16 v0, v31

    float-to-int v10, v0

    mul-float v9, v9, p7

    const/high16 v31, 0x42c80000    # 100.0f

    cmpl-float v31, v9, v31

    if-lez v31, :cond_0

    const/16 v16, 0x1

    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textFont:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getWatermarkTextFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v31

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v31, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v16, :cond_1

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v31, v0

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    add-int/lit8 v21, v31, 0x2

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->isVertical:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    const/16 v31, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v32

    move-object/from16 v0, p2

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v5

    const/16 v31, 0x0

    const/16 v32, 0x0

    div-int v33, v10, v21

    move/from16 v0, v33

    if-le v0, v5, :cond_2

    :goto_0
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v32

    move-object/from16 v0, p2

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    const/16 v31, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v5

    mul-int v31, v21, v5

    add-int/lit8 v32, v5, -0x1

    mul-int/lit8 v32, v32, 0x1

    add-int v29, v31, v32

    sub-int v31, v10, v29

    div-int/lit8 v28, v31, 0x2

    mul-int v31, v21, v5

    sub-int v31, v10, v31

    add-int/lit8 v32, v5, 0x1

    div-int v12, v31, v32

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v6, v0, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->vAlign:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    move/from16 v27, v8

    :goto_2
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->hAlign:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v6

    goto :goto_1

    :cond_2
    div-int v5, v10, v21

    goto :goto_0

    :pswitch_0
    if-nez v14, :cond_3

    mul-int v31, v21, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v8

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v27, v31, v32

    goto :goto_2

    :cond_3
    mul-int v31, v21, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v8

    add-int/lit8 v32, v14, -0x1

    mul-int/lit8 v32, v32, 0x5

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v27, v31, v32

    goto :goto_2

    :pswitch_1
    const/16 v31, 0x5

    move/from16 v0, v31

    if-le v12, v0, :cond_4

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v8

    mul-int v32, v21, v14

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    mul-int/lit8 v32, v14, 0x5

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v27, v31, v32

    goto :goto_2

    :cond_4
    add-int/lit8 v31, v14, 0x1

    mul-int v31, v31, v12

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v8

    mul-int v32, v21, v14

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v27, v31, v32

    goto/16 :goto_2

    :pswitch_2
    if-nez v14, :cond_5

    int-to-float v0, v10

    move/from16 v31, v0

    add-float v31, v31, v8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    sub-int v32, v32, v14

    mul-int v32, v32, v21

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v27, v31, v32

    goto/16 :goto_2

    :cond_5
    int-to-float v0, v10

    move/from16 v31, v0

    add-float v31, v31, v8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    sub-int v32, v32, v14

    mul-int v32, v32, v21

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    add-int/lit8 v32, v14, -0x1

    mul-int/lit8 v32, v32, 0x5

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v27, v31, v32

    goto/16 :goto_2

    :pswitch_3
    sget-object v31, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v16, :cond_7

    add-float v31, v18, v20

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_7

    const/high16 v31, 0x3f800000    # 1.0f

    add-float v31, v31, v7

    add-float v32, v18, v20

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v11, v31, v32

    :goto_4
    if-eqz v22, :cond_6

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    sget-object v31, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v31, "%c"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    const-string v31, "%c"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_7
    const/high16 v31, 0x3f800000    # 1.0f

    add-float v11, v7, v31

    goto :goto_4

    :pswitch_4
    sget-object v31, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v11, v7, v31

    if-eqz v22, :cond_8

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    sget-object v31, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v31, "%c"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    const-string v31, "%c"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :pswitch_5
    sget-object v31, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v16, :cond_a

    add-float v31, v18, v20

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_a

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v7

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v31, v31, v32

    add-float v32, v18, v20

    sub-float v11, v31, v32

    :goto_5
    if-eqz v22, :cond_9

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    sget-object v31, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v31, "%c"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    const-string v31, "%c"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_a
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v7

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v11, v31, v32

    goto/16 :goto_5

    :cond_b
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v32

    move-object/from16 v0, p2

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->vAlign:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_2

    move/from16 v27, v8

    :goto_6
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->hAlign:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_3

    :cond_c
    :goto_7
    return-void

    :pswitch_6
    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v27, v8, v31

    goto :goto_6

    :pswitch_7
    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v31, v0

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    sub-int v31, v10, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v31, v31, v8

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v27, v31, v32

    goto :goto_6

    :pswitch_8
    int-to-float v0, v10

    move/from16 v31, v0

    add-float v31, v31, v8

    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v27, v31, v32

    goto :goto_6

    :pswitch_9
    sget-object v31, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v16, :cond_e

    add-float v31, v18, v20

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_e

    const/high16 v31, 0x3f800000    # 1.0f

    add-float v31, v31, v7

    add-float v32, v18, v20

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v11, v31, v32

    :goto_8
    if-eqz v22, :cond_d

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    sget-object v31, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_d
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :cond_e
    const/high16 v31, 0x3f800000    # 1.0f

    add-float v11, v7, v31

    goto :goto_8

    :pswitch_a
    sget-object v31, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v11, v7, v31

    if-eqz v22, :cond_f

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    sget-object v31, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_f
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :pswitch_b
    sget-object v31, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v16, :cond_11

    add-float v31, v18, v20

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_11

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v7

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v31, v31, v32

    add-float v32, v18, v20

    sub-float v11, v31, v32

    :goto_9
    if-eqz v22, :cond_10

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    sget-object v31, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_10
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    :cond_11
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v7

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v11, v31, v32

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getWatermarkText(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getCurrentYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    const-string v1, "yyyy.MM.dd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    const-string v1, "yyyy.MM.dd.kk:mm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateFormat01()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->access$300(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateFormat02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->access$300(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateFormat03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getHoliday()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTerm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getLunarYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getCurrentDayOfWeek()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLocationString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLocationString01()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLocationString02()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getGpsInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getPM25()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getChinaDate()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateforFestival()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getChinaTemperature()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getCity()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_15
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->access$400(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

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
    .end packed-switch
.end method

.method public loadWatermarkText(Landroid/content/Context;Landroid/location/Location;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkLocationTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->loadWatermarkLocationText(Landroid/content/Context;Landroid/location/Location;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkWeatherTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->loadWatermarkWeatherText(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->mWatermarkDateTextLoader:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->loadWatermarkDateText()V

    return-void
.end method
