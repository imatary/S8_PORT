.class public Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;
.super Ljava/lang/Object;
.source "BixByUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils$MAIN_STATE;
    }
.end annotation


# static fields
.field private static ALL_LANGUAGES:[Ljava/lang/String; = null

.field public static final APP_NAME:Ljava/lang/String; = "PhotoEditor"

.field public static final CALL_FROM_EXECUTOR:Ljava/lang/String; = "call_from_executor"

.field public static final INVALID_VALUE:I = -0x3e8

.field public static final NLG_AXIS:Ljava/lang/String; = "Axis"

.field public static final NLG_DEGREE:Ljava/lang/String; = "Degree"

.field public static final NLG_DIRECTION:Ljava/lang/String; = "Direction"

.field public static final NLG_EXIST:Ljava/lang/String; = "Exist"

.field public static final NLG_FACE:Ljava/lang/String; = "Face"

.field public static final NLG_LEVEL:Ljava/lang/String; = "Level"

.field public static final NLG_MATCH:Ljava/lang/String; = "Match"

.field public static final NLG_NAME:Ljava/lang/String; = "Name"

.field public static final NLG_NO:Ljava/lang/String; = "no"

.field public static final NLG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final NLG_PORTRAITTYPE:Ljava/lang/String; = "PortraitType"

.field public static final NLG_PORTRAITVALUE:Ljava/lang/String; = "PortraitValue"

.field public static final NLG_RATIO:Ljava/lang/String; = "Ratio"

.field public static final NLG_SPEED:Ljava/lang/String; = "Speed"

.field public static final NLG_TONETYPE:Ljava/lang/String; = "ToneType"

.field public static final NLG_TONEVALUE:Ljava/lang/String; = "ToneValue"

.field public static final NLG_VALID:Ljava/lang/String; = "Valid"

.field public static final NLG_YES:Ljava/lang/String; = "yes"

.field public static final PARAMETER_ANAPHORA:Ljava/lang/String; = "anaphora"

.field public static final PARAMETER_DEGREE:Ljava/lang/String; = "degree"

.field public static final PARAMETER_LESS:Ljava/lang/String; = "less"

.field public static final PARAMETER_LEVEL:Ljava/lang/String; = "level"

.field public static final PARAMETER_MORE:Ljava/lang/String; = "more"

.field public static final PARAMETER_WHITEBALANCEMODE:Ljava/lang/String; = "WhiteBalanceMode"

.field public static SLOT_VALUE_AUTO:Ljava/lang/String; = null

.field public static SLOT_VALUE_BACKWARD:Ljava/lang/String; = null

.field public static SLOT_VALUE_BLURBG:Ljava/lang/String; = null

.field public static SLOT_VALUE_BRIGHTFACE:Ljava/lang/String; = null

.field public static SLOT_VALUE_BRIGHTNESS:Ljava/lang/String; = null

.field public static SLOT_VALUE_CLOUDY:Ljava/lang/String; = null

.field public static SLOT_VALUE_CONTRAST:Ljava/lang/String; = null

.field public static SLOT_VALUE_DAYLIGHT:Ljava/lang/String; = null

.field public static SLOT_VALUE_EXPOSURE:Ljava/lang/String; = null

.field public static final SLOT_VALUE_FAST:Ljava/lang/String; = "Fast"

.field public static SLOT_VALUE_FLUORESCENT:Ljava/lang/String; = null

.field public static SLOT_VALUE_FORWARD:Ljava/lang/String; = null

.field public static final SLOT_VALUE_FOURTHREE:Ljava/lang/String; = "4:3"

.field public static SLOT_VALUE_FREE:Ljava/lang/String; = null

.field public static SLOT_VALUE_HORIZONTAL:Ljava/lang/String; = null

.field public static SLOT_VALUE_HORIZONTAL_FLIP:Ljava/lang/String; = null

.field public static SLOT_VALUE_HUE:Ljava/lang/String; = null

.field public static SLOT_VALUE_INCANDESCENT:Ljava/lang/String; = null

.field public static SLOT_VALUE_LARGEEYES:Ljava/lang/String; = null

.field public static SLOT_VALUE_LONGLEGS:Ljava/lang/String; = null

.field public static SLOT_VALUE_LOOP:Ljava/lang/String; = null

.field public static final SLOT_VALUE_NINESIXTEEN:Ljava/lang/String; = "9:16"

.field public static final SLOT_VALUE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final SLOT_VALUE_ONEONE:Ljava/lang/String; = "1:1"

.field public static SLOT_VALUE_ORIGINAL:Ljava/lang/String; = null

.field public static SLOT_VALUE_SATURATION:Ljava/lang/String; = null

.field public static final SLOT_VALUE_SIXTEENNINE:Ljava/lang/String; = "16:9"

.field public static SLOT_VALUE_SLIMFACE:Ljava/lang/String; = null

.field public static final SLOT_VALUE_SLOW:Ljava/lang/String; = "Slow"

.field public static SLOT_VALUE_SOFTENFACE:Ljava/lang/String; = null

.field public static final SLOT_VALUE_THREEFOUR:Ljava/lang/String; = "3:4"

.field public static SLOT_VALUE_VERTICAL:Ljava/lang/String; = null

.field public static SLOT_VALUE_VERTICAL_FLIP:Ljava/lang/String; = null

.field public static SLOT_VALUE_WHITEBALANCE:Ljava/lang/String; = null

.field public static final STATE_ID_ADDIMAGE:Ljava/lang/String; = "AddImage"

.field public static final STATE_ID_ADJUSTMENT:Ljava/lang/String; = "Adjustment"

.field public static final STATE_ID_ADJUSTMENTSTRAIGHTEN:Ljava/lang/String; = "AdjustmentStraighten"

.field public static final STATE_ID_ADJUSTRESET:Ljava/lang/String; = "AdjustReset"

.field public static final STATE_ID_ADVANCEDTONE:Ljava/lang/String; = "AdvancedTone"

.field public static final STATE_ID_AGIFSAVE:Ljava/lang/String; = "AgifSave"

.field public static final STATE_ID_ANIMATIONADD:Ljava/lang/String; = "AnimationAdd"

.field public static final STATE_ID_ANIMATIONDIRECTION:Ljava/lang/String; = "AnimationDirection"

.field public static final STATE_ID_ANIMATIONEDITOR:Ljava/lang/String; = "AnimationEditor"

.field public static final STATE_ID_ANIMATIONRATIO:Ljava/lang/String; = "AnimationRatio"

.field public static final STATE_ID_ANIMATIONSPEED:Ljava/lang/String; = "AnimationSpeed"

.field public static final STATE_ID_COLLAGEADDIMAGE:Ljava/lang/String; = "CollageAddImage"

.field public static final STATE_ID_COLLAGEBG:Ljava/lang/String; = "CollageBG"

.field public static final STATE_ID_COLLAGEBORDER:Ljava/lang/String; = "CollageBorder"

.field public static final STATE_ID_COLLAGEEDITOR:Ljava/lang/String; = "CollageEditor"

.field public static final STATE_ID_COLLAGELAYOUT:Ljava/lang/String; = "CollageLayout"

.field public static final STATE_ID_COLLAGERATIO:Ljava/lang/String; = "CollageRatio"

.field public static final STATE_ID_COLLAGESAVE:Ljava/lang/String; = "CollageSave"

.field public static final STATE_ID_CROSSSHARE:Ljava/lang/String; = "CrossShare"

.field public static final STATE_ID_CROSSSHAREVIA:Ljava/lang/String; = "CrossShareVia"

.field public static final STATE_ID_DECORATION:Ljava/lang/String; = "Decoration"

.field public static final STATE_ID_DRAW:Ljava/lang/String; = "Draw"

.field public static final STATE_ID_EFFECT:Ljava/lang/String; = "Effect"

.field public static final STATE_ID_EFFECTAPPLY:Ljava/lang/String; = "EffectApply"

.field public static final STATE_ID_FIXREDEYE:Ljava/lang/String; = "FixRedEye"

.field public static final STATE_ID_FLIP:Ljava/lang/String; = "Flip"

.field public static final STATE_ID_LABEL:Ljava/lang/String; = "Label"

.field public static final STATE_ID_LASSO:Ljava/lang/String; = "Lasso"

.field public static final STATE_ID_MOSAIC:Ljava/lang/String; = "Mosaic"

.field public static final STATE_ID_PERSPECTIVE:Ljava/lang/String; = "Perspective"

.field public static final STATE_ID_PHOTOAPPLY:Ljava/lang/String; = "PhotoApply"

.field public static final STATE_ID_PHOTOEDITOR:Ljava/lang/String; = "PhotoEditor"

.field public static final STATE_ID_PHOTOREDO:Ljava/lang/String; = "PhotoRedo"

.field public static final STATE_ID_PHOTOSAVE:Ljava/lang/String; = "PhotoSave"

.field public static final STATE_ID_PHOTOUNDO:Ljava/lang/String; = "PhotoUndo"

.field public static final STATE_ID_PORTRAIT:Ljava/lang/String; = "Portrait"

.field public static final STATE_ID_PORTRAITAPPLY:Ljava/lang/String; = "PortraitApply"

.field public static final STATE_ID_RATIO:Ljava/lang/String; = "Ratio"

.field public static final STATE_ID_ROTATE:Ljava/lang/String; = "Rotate"

.field public static final STATE_ID_SHAREVIA:Ljava/lang/String; = "ShareVia"

.field public static final STATE_ID_SHUFFLE:Ljava/lang/String; = "Shuffle"

.field public static final STATE_ID_STICKER:Ljava/lang/String; = "Sticker"

.field public static final STATE_ID_TONE:Ljava/lang/String; = "Tone"

.field public static final STATE_ID_TONEAPPLY:Ljava/lang/String; = "ToneApply"

.field public static final STATE_NONE:I = -0x1

.field public static final STATE_RESULT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BixbyApiPE"

.field public static isToastShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "backward"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BACKWARD:Ljava/lang/String;

    const-string v0, "forward"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FORWARD:Ljava/lang/String;

    const-string v0, "loop"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LOOP:Ljava/lang/String;

    const-string v0, "free"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FREE:Ljava/lang/String;

    const-string v0, "original"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_ORIGINAL:Ljava/lang/String;

    const-string v0, "vertical flip"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL_FLIP:Ljava/lang/String;

    const-string v0, "horizontal flip"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL_FLIP:Ljava/lang/String;

    const-string v0, "vertical"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL:Ljava/lang/String;

    const-string v0, "horizontal"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL:Ljava/lang/String;

    const-string v0, "Brightness"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTNESS:Ljava/lang/String;

    const-string v0, "Exposure"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_EXPOSURE:Ljava/lang/String;

    const-string v0, "Contrast"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CONTRAST:Ljava/lang/String;

    const-string v0, "Saturation"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SATURATION:Ljava/lang/String;

    const-string v0, "Hue"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HUE:Ljava/lang/String;

    const-string v0, "WhiteBalance"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_WHITEBALANCE:Ljava/lang/String;

    const-string v0, "Auto"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_AUTO:Ljava/lang/String;

    const-string v0, "Incandescent"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_INCANDESCENT:Ljava/lang/String;

    const-string v0, "Fluorescent"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FLUORESCENT:Ljava/lang/String;

    const-string v0, "Daylight"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_DAYLIGHT:Ljava/lang/String;

    const-string v0, "Cloudy"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CLOUDY:Ljava/lang/String;

    const-string v0, "BrightFace"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTFACE:Ljava/lang/String;

    const-string v0, "SoftenFace"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SOFTENFACE:Ljava/lang/String;

    const-string v0, "LargeEyes"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LARGEEYES:Ljava/lang/String;

    const-string v0, "SlimFace"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SLIMFACE:Ljava/lang/String;

    const-string v0, "BlurBG"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BLURBG:Ljava/lang/String;

    const-string v0, "LongLegs"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LONGLEGS:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ko"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "es"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->ALL_LANGUAGES:[Ljava/lang/String;

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isToastShown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getDefaultSlotValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->ALL_LANGUAGES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/util/Locale;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->ALL_LANGUAGES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getString(ILjava/util/Locale;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->updateDefaultSlotValue(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getDefaultSlotValue(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FREE:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_ORIGINAL:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL_FLIP:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL_FLIP:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTNESS:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_EXPOSURE:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CONTRAST:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SATURATION:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HUE:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_WHITEBALANCE:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_AUTO:Ljava/lang/String;

    goto :goto_0

    :sswitch_d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_INCANDESCENT:Ljava/lang/String;

    goto :goto_0

    :sswitch_e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FLUORESCENT:Ljava/lang/String;

    goto :goto_0

    :sswitch_f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_DAYLIGHT:Ljava/lang/String;

    goto :goto_0

    :sswitch_10
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CLOUDY:Ljava/lang/String;

    goto :goto_0

    :sswitch_11
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTFACE:Ljava/lang/String;

    goto :goto_0

    :sswitch_12
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SOFTENFACE:Ljava/lang/String;

    goto :goto_0

    :sswitch_13
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LARGEEYES:Ljava/lang/String;

    goto :goto_0

    :sswitch_14
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SLIMFACE:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BLURBG:Ljava/lang/String;

    goto :goto_0

    :sswitch_16
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LONGLEGS:Ljava/lang/String;

    goto :goto_0

    :sswitch_17
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BACKWARD:Ljava/lang/String;

    goto :goto_0

    :sswitch_18
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FORWARD:Ljava/lang/String;

    goto :goto_0

    :sswitch_19
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LOOP:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07007d -> :sswitch_17
        0x7f070088 -> :sswitch_15
        0x7f070089 -> :sswitch_11
        0x7f07008b -> :sswitch_6
        0x7f0700b8 -> :sswitch_8
        0x7f070104 -> :sswitch_7
        0x7f070114 -> :sswitch_3
        0x7f070116 -> :sswitch_2
        0x7f070117 -> :sswitch_18
        0x7f07011a -> :sswitch_0
        0x7f07012f -> :sswitch_5
        0x7f070130 -> :sswitch_a
        0x7f07014a -> :sswitch_13
        0x7f070156 -> :sswitch_16
        0x7f070157 -> :sswitch_19
        0x7f07019e -> :sswitch_1
        0x7f07027d -> :sswitch_9
        0x7f0702b2 -> :sswitch_14
        0x7f0702b7 -> :sswitch_12
        0x7f07033b -> :sswitch_4
        0x7f07034a -> :sswitch_b
        0x7f07034b -> :sswitch_c
        0x7f07034c -> :sswitch_10
        0x7f07034d -> :sswitch_f
        0x7f07034e -> :sswitch_e
        0x7f07034f -> :sswitch_d
    .end sparse-switch
.end method

.method public static getEffectStringEnglish(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Vignette"

    goto :goto_0

    :pswitch_1
    const-string v0, "Vintage"

    goto :goto_0

    :pswitch_2
    const-string v0, "Nostalgia"

    goto :goto_0

    :pswitch_3
    const-string v0, "Fade"

    goto :goto_0

    :pswitch_4
    const-string v0, "Grayscale"

    goto :goto_0

    :pswitch_5
    const-string v0, "Sepia"

    goto :goto_0

    :pswitch_6
    const-string v0, "Tint"

    goto :goto_0

    :pswitch_7
    const-string v0, "Stardust"

    goto :goto_0

    :pswitch_8
    const-string v0, "Light Flare"

    goto :goto_0

    :pswitch_9
    const-string v0, "Light Streak"

    goto :goto_0

    :pswitch_a
    const-string v0, "Downlight"

    goto :goto_0

    :pswitch_b
    const-string v0, "Blue Wash"

    goto :goto_0

    :pswitch_c
    const-string v0, "Sharpen"

    goto :goto_0

    :pswitch_d
    const-string v0, "Soft Glow"

    goto :goto_0

    :pswitch_e
    const-string v0, "Yellow Glow"

    goto :goto_0

    :pswitch_f
    const-string v0, "Dawn Cast"

    goto :goto_0

    :pswitch_10
    const-string v0, "Turquoise"

    goto :goto_0

    :pswitch_11
    const-string v0, "Impressionist"

    goto :goto_0

    :pswitch_12
    const-string v0, "Cartoon"

    goto :goto_0

    :pswitch_13
    const-string v0, "Negative"

    goto :goto_0

    :pswitch_14
    const-string v0, "Sketch"

    goto :goto_0

    :pswitch_15
    const-string v0, "Pop Art"

    goto :goto_0

    :pswitch_16
    const-string v0, "Posterize"

    goto :goto_0

    :pswitch_17
    const-string v0, "Gothic Noir"

    goto :goto_0

    :pswitch_18
    const-string v0, "Magic Pen"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1012
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_12
        :pswitch_1
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getExecutorSubMode(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Rotate"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x20001

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL_FLIP:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x20002

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL_FLIP:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x20003

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FREE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x20004

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_ORIGINAL:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x20005

    goto :goto_0

    :cond_6
    const-string v1, "1:1"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x20006

    goto :goto_0

    :cond_7
    const-string v1, "4:3"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x20007

    goto :goto_0

    :cond_8
    const-string v1, "3:4"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x20008

    goto :goto_0

    :cond_9
    const-string v1, "16:9"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x20009

    goto :goto_0

    :cond_a
    const-string v1, "9:16"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x2000a

    goto :goto_0

    :cond_b
    const-string v1, "Perspective"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v0, 0x20014

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v0, 0x20016

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v0, 0x20015

    goto/16 :goto_0

    :cond_e
    const-string v1, "Lasso"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v0, 0x2000e

    goto/16 :goto_0

    :cond_f
    const-string v1, "AdjustReset"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v0, 0x20013

    goto/16 :goto_0

    :cond_10
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTNESS:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x801

    goto/16 :goto_0

    :cond_11
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_EXPOSURE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0x811

    goto/16 :goto_0

    :cond_12
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CONTRAST:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x802

    goto/16 :goto_0

    :cond_13
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SATURATION:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x803

    goto/16 :goto_0

    :cond_14
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HUE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x808

    goto/16 :goto_0

    :cond_15
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_WHITEBALANCE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x820

    goto/16 :goto_0

    :cond_16
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_AUTO:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v0, 0x821

    goto/16 :goto_0

    :cond_17
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_INCANDESCENT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x824

    goto/16 :goto_0

    :cond_18
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FLUORESCENT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x825

    goto/16 :goto_0

    :cond_19
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_DAYLIGHT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x822

    goto/16 :goto_0

    :cond_1a
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CLOUDY:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v0, 0x823

    goto/16 :goto_0

    :cond_1b
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTFACE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v0, 0x2002

    goto/16 :goto_0

    :cond_1c
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SOFTENFACE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v0, 0x2003

    goto/16 :goto_0

    :cond_1d
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LARGEEYES:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x2005

    goto/16 :goto_0

    :cond_1e
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SLIMFACE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v0, 0x2006

    goto/16 :goto_0

    :cond_1f
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BLURBG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0x2004

    goto/16 :goto_0

    :cond_20
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LONGLEGS:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v0, 0x2007

    goto/16 :goto_0

    :cond_21
    const-string v1, "FixRedEye"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v0, 0x2001

    goto/16 :goto_0

    :cond_22
    const-string v1, "AddImage"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const v0, 0x80001

    goto/16 :goto_0

    :cond_23
    const-string v1, "Sticker"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const v0, 0x80002

    goto/16 :goto_0

    :cond_24
    const-string v1, "Label"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const v0, 0x80003

    goto/16 :goto_0

    :cond_25
    const-string v1, "Draw"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const v0, 0x80004

    goto/16 :goto_0

    :cond_26
    const-string v1, "Mosaic"

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x8000a

    goto/16 :goto_0
.end method

.method public static getLandingState(I)Ljava/lang/String;
    .locals 1

    and-int/lit16 v0, p0, -0x100

    sparse-switch v0, :sswitch_data_0

    const-string v0, "PhotoEditor"

    :goto_0
    return-object v0

    :sswitch_0
    const v0, 0x2000e

    if-lt p0, v0, :cond_0

    const v0, 0x20012

    if-gt p0, v0, :cond_0

    const-string v0, "Lasso"

    goto :goto_0

    :cond_0
    const v0, 0x20014

    if-lt p0, v0, :cond_1

    const v0, 0x20016

    if-gt p0, v0, :cond_1

    const-string v0, "Perspective"

    goto :goto_0

    :cond_1
    const-string v0, "Adjustment"

    goto :goto_0

    :sswitch_1
    const-string v0, "Tone"

    goto :goto_0

    :sswitch_2
    const-string v0, "AdvancedTone"

    goto :goto_0

    :sswitch_3
    const-string v0, "Effect"

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x2001

    if-ne p0, v0, :cond_2

    const-string v0, "FixRedEye"

    goto :goto_0

    :cond_2
    const-string v0, "Portrait"

    goto :goto_0

    :sswitch_5
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Decoration"

    goto :goto_0

    :pswitch_1
    const-string v0, "AddImage"

    goto :goto_0

    :pswitch_2
    const-string v0, "Label"

    goto :goto_0

    :pswitch_3
    const-string v0, "Sticker"

    goto :goto_0

    :pswitch_4
    const-string v0, "Mosaic"

    goto :goto_0

    :pswitch_5
    const-string v0, "Draw"

    goto :goto_0

    :sswitch_6
    const-string v0, "Draw"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_4
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_5
        0x90000 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getLevelFromParameter(Ljava/util/List;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "int"

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "level"

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "degree"

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "more"

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "less"

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getString(ILjava/util/Locale;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v3
.end method

.method public static getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anaphora"

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "String"

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "more"

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "less"

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getValueFromParameter(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSaveRule(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSubDecorationRule(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoEditor_150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BixbyApiPE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showToast(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isToastShown:Z

    const v1, 0x7f070376

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static updateDefaultSlotValue(ILjava/lang/String;)V
    .locals 0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FREE:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_ORIGINAL:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL_FLIP:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL_FLIP:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTNESS:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_EXPOSURE:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CONTRAST:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SATURATION:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HUE:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_WHITEBALANCE:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_AUTO:Ljava/lang/String;

    goto :goto_0

    :sswitch_d
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_INCANDESCENT:Ljava/lang/String;

    goto :goto_0

    :sswitch_e
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FLUORESCENT:Ljava/lang/String;

    goto :goto_0

    :sswitch_f
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_DAYLIGHT:Ljava/lang/String;

    goto :goto_0

    :sswitch_10
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CLOUDY:Ljava/lang/String;

    goto :goto_0

    :sswitch_11
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTFACE:Ljava/lang/String;

    goto :goto_0

    :sswitch_12
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SOFTENFACE:Ljava/lang/String;

    goto :goto_0

    :sswitch_13
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LARGEEYES:Ljava/lang/String;

    goto :goto_0

    :sswitch_14
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SLIMFACE:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BLURBG:Ljava/lang/String;

    goto :goto_0

    :sswitch_16
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LONGLEGS:Ljava/lang/String;

    goto :goto_0

    :sswitch_17
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BACKWARD:Ljava/lang/String;

    goto :goto_0

    :sswitch_18
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FORWARD:Ljava/lang/String;

    goto :goto_0

    :sswitch_19
    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LOOP:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f07007d -> :sswitch_17
        0x7f070088 -> :sswitch_15
        0x7f070089 -> :sswitch_11
        0x7f07008b -> :sswitch_6
        0x7f0700b8 -> :sswitch_8
        0x7f070104 -> :sswitch_7
        0x7f070114 -> :sswitch_3
        0x7f070116 -> :sswitch_2
        0x7f070117 -> :sswitch_18
        0x7f07011a -> :sswitch_0
        0x7f07012f -> :sswitch_5
        0x7f070130 -> :sswitch_a
        0x7f07014a -> :sswitch_13
        0x7f070156 -> :sswitch_16
        0x7f070157 -> :sswitch_19
        0x7f07019e -> :sswitch_1
        0x7f07027d -> :sswitch_9
        0x7f0702b2 -> :sswitch_14
        0x7f0702b7 -> :sswitch_12
        0x7f07033b -> :sswitch_4
        0x7f07034a -> :sswitch_b
        0x7f07034b -> :sswitch_c
        0x7f07034c -> :sswitch_10
        0x7f07034d -> :sswitch_f
        0x7f07034e -> :sswitch_e
        0x7f07034f -> :sswitch_d
    .end sparse-switch
.end method

.method public static updateSlotValue(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils$MAIN_STATE;)V
    .locals 2

    const v1, 0x7f07019e

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils$MAIN_STATE;->PhotoEditor:Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils$MAIN_STATE;

    if-ne p1, v0, :cond_1

    const v0, 0x7f07011a

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FREE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_ORIGINAL:Ljava/lang/String;

    const v0, 0x7f07033b

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL:Ljava/lang/String;

    const v0, 0x7f07012f

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HORIZONTAL:Ljava/lang/String;

    const v0, 0x7f07008b

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTNESS:Ljava/lang/String;

    const v0, 0x7f070104

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_EXPOSURE:Ljava/lang/String;

    const v0, 0x7f0700b8

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CONTRAST:Ljava/lang/String;

    const v0, 0x7f07027d

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SATURATION:Ljava/lang/String;

    const v0, 0x7f070130

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_HUE:Ljava/lang/String;

    const v0, 0x7f07034a

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_WHITEBALANCE:Ljava/lang/String;

    const v0, 0x7f07034b

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_AUTO:Ljava/lang/String;

    const v0, 0x7f07034f

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_INCANDESCENT:Ljava/lang/String;

    const v0, 0x7f07034e

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FLUORESCENT:Ljava/lang/String;

    const v0, 0x7f07034d

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_DAYLIGHT:Ljava/lang/String;

    const v0, 0x7f07034c

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_CLOUDY:Ljava/lang/String;

    const v0, 0x7f070089

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BRIGHTFACE:Ljava/lang/String;

    const v0, 0x7f0702b7

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SOFTENFACE:Ljava/lang/String;

    const v0, 0x7f07014a

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LARGEEYES:Ljava/lang/String;

    const v0, 0x7f0702b2

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_SLIMFACE:Ljava/lang/String;

    const v0, 0x7f070088

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BLURBG:Ljava/lang/String;

    const v0, 0x7f070156

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LONGLEGS:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils$MAIN_STATE;->AnimationEditor:Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils$MAIN_STATE;

    if-ne p1, v0, :cond_0

    const v0, 0x7f07007d

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_BACKWARD:Ljava/lang/String;

    const v0, 0x7f070117

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_FORWARD:Ljava/lang/String;

    const v0, 0x7f070157

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_LOOP:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_ORIGINAL:Ljava/lang/String;

    goto :goto_0
.end method
