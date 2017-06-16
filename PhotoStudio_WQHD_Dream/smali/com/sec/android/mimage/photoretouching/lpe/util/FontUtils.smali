.class public Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FontUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCutiveMono()Landroid/graphics/Typeface;
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    :try_start_0
    const-string v2, "/system/fonts/CutiveMono.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "FontUtils"

    const-string v3, "getCutiveMono exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getRobotoBold()Landroid/graphics/Typeface;
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    :try_start_0
    const-string v1, "/system/fonts/Roboto-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getRobotoCondensedRegular()Landroid/graphics/Typeface;
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    :try_start_0
    const-string v2, "/system/fonts/RobotoCondensed-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "FontUtils"

    const-string v3, "getRobotoCondensedRegular exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getRobotoItalic()Landroid/graphics/Typeface;
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    :try_start_0
    const-string v2, "/system/fonts/Roboto-Italic.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "FontUtils"

    const-string v3, "getRobotoItalic exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getRobotoLightFont()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static getRobotoRegular()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static getRobotoRegularItalic()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sans-serif"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static getRobotoThin()Landroid/graphics/Typeface;
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    :try_start_0
    const-string v2, "/system/fonts/Roboto-Thin.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "FontUtils"

    const-string v3, "getRobotoItalic exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getRobotoThinItalic()Landroid/graphics/Typeface;
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    :try_start_0
    const-string v1, "/system/fonts/Roboto-ThinItalic.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$1;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$util$FontUtils$TextFont:[I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getCutiveMono()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoCondensedRegular()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoItalic()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoThin()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoThinItalic()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getRobotoRegularItalic()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
