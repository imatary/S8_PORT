.class public Lcom/samsung/android/sdk/pen/pen/preload/Beautify;
.super Ljava/lang/Object;
.source "Beautify.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field private static final BEAUTIFY_PARAMETER_CURSIVE:I = 0x2

.field private static final BEAUTIFY_PARAMETER_DUMMY:I = 0x4

.field private static final BEAUTIFY_PARAMETER_LINETYPE:I = 0x1

.field private static final BEAUTIFY_PARAMETER_MODULATION:I = 0x6

.field private static final BEAUTIFY_PARAMETER_SCRATCH:I = 0x7

.field private static final BEAUTIFY_PARAMETER_SLANT:I = 0x9

.field private static final BEAUTIFY_PARAMETER_SLANTINDEX:I = 0x8

.field private static final BEAUTIFY_PARAMETER_STYLEID:I = 0x0

.field private static final BEAUTIFY_PARAMETER_SUSTENANCE:I = 0x3

.field private static final BEAUTIFY_PARAMETER_THICKNESS:I = 0x5

.field private static final BEAUTIFY_STYLEID_CURSIVE_LM:I = 0xb

.field private static final BEAUTIFY_STYLEID_HUAI:I = 0xc

.field private static final BEAUTIFY_STYLEID_HUANG:I = 0x5

.field private static final BEAUTIFY_STYLEID_HUI:I = 0x6

.field private static final BEAUTIFY_STYLEID_RUNNING_HAND_S:I = 0x1

.field private static final BEAUTIFY_STYLEID_WANG:I = 0x3

.field private static final DEFAULT_SETTING_VALUES:[[I

.field private static final MAX_PARAMETER_INDEX:I = 0xa

.field private static final MAX_STYLEID_COUNT:I = 0x6

.field public static final TAG:Ljava/lang/String; = "Beautify"

.field private static mDensity:F = 0.0f

.field private static final mImagePath_eraser_bar:Ljava/lang/String; = "eraser_bar"

.field private static final mImagePath_eraser_handel:Ljava/lang/String; = "eraser_handel"

.field private static final mImagePath_eraser_handel_press:Ljava/lang/String; = "eraser_handel_press"


# instance fields
.field private mAdvancedSettingLayout:Landroid/widget/LinearLayout;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentButtonIndex:I

.field private mCursiveSeekBar:Landroid/widget/SeekBar;

.field private mDummySeekBar:Landroid/widget/SeekBar;

.field private mIs64:Z

.field private mModulationSeekBar:Landroid/widget/SeekBar;

.field private mResetButton:Landroid/view/View;

.field private final mResetButtonListener:Landroid/view/View$OnClickListener;

.field private final mSeekBarListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

.field private final mSettingValues:[[I

.field private mSustenanceSeekBar:Landroid/widget/SeekBar;

.field private final nativeBeautify:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->DEFAULT_SETTING_VALUES:[[I

    return-void

    :array_0
    .array-data 4
        0xb
        0x2
        0x5
        0x8
        0x1
        0xf
        0x46
        0xb
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x2
        0x5
        0x1
        0x1
        0x12
        0x46
        0xd
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x2
        0x2
        0x2
        0x1
        0x12
        0x46
        0x5
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x2
        0x3
        0x3
        0x1
        0xc
        0x46
        0x6
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x2
        0x8
        0x1
        0xf
        0x46
        0x3
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x1
        0x3
        0x5
        0x1
        0xc
        0x46
        0x1
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->DEFAULT_SETTING_VALUES:[[I

    invoke-virtual {v1}, [[I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;-><init>(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mResetButtonListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$3;-><init>(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSeekBarListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    :try_start_0
    const-string v1, "SPenBeautify"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "Beautify"

    const-string v2, "SPenBeautify Librarie is loaded from static library."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->loadLibrary()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->loadLibrary()V

    goto :goto_1
.end method

.method private Native_construct(J)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_construct(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_construct(I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_draw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_draw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_draw(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_getAdvancedSetting(J)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getAdvancedSetting(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getAdvancedSetting(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private Native_getColor(J)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getColor(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private Native_getMaxSettingValue(J)F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getMaxSettingValue(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getMaxSettingValue(I)F

    move-result v0

    goto :goto_0
.end method

.method private Native_getMinSettingValue(J)F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getMinSettingValue(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getMinSettingValue(I)F

    move-result v0

    goto :goto_0
.end method

.method private Native_getPenAttribute(JI)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getPenAttribute(JI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getPenAttribute(II)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_getProperty(JLandroid/os/Bundle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getProperty(JLandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getProperty(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_getSize(J)F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getSize(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getSize(I)F

    move-result v0

    goto :goto_0
.end method

.method private Native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p8}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    long-to-int v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_getStrokeRect(I[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method private Native_init()J
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_init_64()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_init()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private Native_isCurveEnabled(J)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_isCurveEnabled(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_isCurveEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_onLoad(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_onLoad(J)V

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_onLoad(I)V

    goto :goto_0
.end method

.method private Native_onUnload(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_onUnload(J)V

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_onUnload(I)V

    goto :goto_0
.end method

.method private Native_redraw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_redraw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_redraw(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setAdvancedSetting(JLjava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setAdvancedSetting(JLjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setAdvancedSetting(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setBitmap(JLandroid/graphics/Bitmap;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setBitmap(JLandroid/graphics/Bitmap;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setBitmap(ILandroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setColor(JI)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setColor(JI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setColor(II)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setCurveEnabled(JZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setCurveEnabled(JZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setCurveEnabled(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setProperty(JLandroid/os/Bundle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setProperty(JLandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setProperty(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setScreenResolution(JII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setScreenResolution(JII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3, p4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setScreenResolution(III)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setSize(JF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setSize(JF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->native_setSize(IF)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCursiveSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSustenanceSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDummySeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mModulationSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setBeautifyType(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    return-object v0
.end method

.method static synthetic access$800()[[I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->DEFAULT_SETTING_VALUES:[[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I

    return-object v0
.end method

.method private beautifyTypeLayout()Landroid/widget/LinearLayout;
    .locals 10

    const/4 v8, -0x2

    const/high16 v9, 0x41f00000    # 30.0f

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x6

    if-ge v4, v7, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    add-int/lit8 v3, v4, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "snote_beautify_chinabrush_mode_0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v7

    invoke-direct {p0, v9}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method private calculatePixel(F)I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDensity:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private cursiveLayout()Landroid/view/View;
    .locals 8

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->cursiveSeekbar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "cursive"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    const/high16 v4, 0x40900000    # 4.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private cursiveSeekbar()Landroid/widget/SeekBar;
    .locals 15

    const/16 v14, 0xa0

    const/4 v13, 0x1

    const/4 v2, 0x0

    new-instance v10, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v9, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xc

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v4, "eraser_handel"

    const-string v5, "eraser_handel_press"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v5, v12}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v7, v8, v4, v13}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const-string v4, "eraser_bar"

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    const/16 v4, 0xa

    if-gt v11, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_0

    const/high16 v4, 0x40d00000    # 6.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v4, 0x2

    new-array v6, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    aput-object v7, v6, v13

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v10, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCursiveSeekBar:Landroid/widget/SeekBar;

    return-object v10

    :cond_0
    const/high16 v4, 0x40b00000    # 5.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_2

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_2
    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0
.end method

.method private dummyLayout()Landroid/view/View;
    .locals 8

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->dummySeekbar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "dummy"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    const/high16 v4, 0x40900000    # 4.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private dummySeekbar()Landroid/widget/SeekBar;
    .locals 15

    const/16 v14, 0xa0

    const/4 v13, 0x1

    const/4 v2, 0x0

    new-instance v10, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v9, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x14

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v4, "eraser_handel"

    const-string v5, "eraser_handel_press"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v5, v12}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v7, v8, v4, v13}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const-string v4, "eraser_bar"

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    const/16 v4, 0xa

    if-gt v11, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_0

    const/high16 v4, 0x40d00000    # 6.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v4, 0x2

    new-array v6, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    aput-object v7, v6, v13

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v10, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDummySeekBar:Landroid/widget/SeekBar;

    return-object v10

    :cond_0
    const/high16 v4, 0x40b00000    # 5.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_2

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_2
    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0
.end method

.method private initView()Landroid/widget/LinearLayout;
    .locals 4

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const v3, 0x43ac8000    # 345.0f

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, -0x969697

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v2, 0x42200000    # 40.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setX(F)V

    const/high16 v2, 0x43070000    # 135.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setY(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->beautifyTypeLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->cursiveLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->sustenanceLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->dummyLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->modulationLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->resetButtonLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private loadLibrary()V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib/libSPenBeautify.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string v3, "Beautify"

    const-string v4, "SPenBeautify Librarie is loaded from dynamic library."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Beautify library is not initialized."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "Beautify"

    const-string v4, "Cannot find the library file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Beautify library is not initialized."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private modulationLayout()Landroid/view/View;
    .locals 8

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->modulationSeekbar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "modulation"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    const/high16 v4, 0x40900000    # 4.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private modulationSeekbar()Landroid/widget/SeekBar;
    .locals 15

    const/16 v14, 0xa0

    const/4 v13, 0x1

    const/4 v2, 0x0

    new-instance v10, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v9, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x64

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v4, "eraser_handel"

    const-string v5, "eraser_handel_press"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v5, v12}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v7, v8, v4, v13}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const-string v4, "eraser_bar"

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    const/16 v4, 0xa

    if-gt v11, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_0

    const/high16 v4, 0x40d00000    # 6.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v4, 0x2

    new-array v6, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    aput-object v7, v6, v13

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v10, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mModulationSeekBar:Landroid/widget/SeekBar;

    return-object v10

    :cond_0
    const/high16 v4, 0x40b00000    # 5.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_2

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_2
    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0
.end method

.method private static native native_command(IILjava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_command(JILjava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_construct(I)Z
.end method

.method private static native native_construct(J)Z
.end method

.method private static native native_draw(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_draw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_end(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_end(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_finalize(I)V
.end method

.method private static native native_finalize(J)V
.end method

.method private static native native_getAdvancedSetting(I)Ljava/lang/String;
.end method

.method private static native native_getAdvancedSetting(J)Ljava/lang/String;
.end method

.method private static native native_getColor(I)I
.end method

.method private static native native_getColor(J)I
.end method

.method private static native native_getMaxSettingValue(I)F
.end method

.method private static native native_getMaxSettingValue(J)F
.end method

.method private static native native_getMinSettingValue(I)F
.end method

.method private static native native_getMinSettingValue(J)F
.end method

.method private static native native_getPenAttribute(II)Z
.end method

.method private static native native_getPenAttribute(JI)Z
.end method

.method private static native native_getProperty(ILandroid/os/Bundle;)Z
.end method

.method private static native native_getProperty(JLandroid/os/Bundle;)Z
.end method

.method private static native native_getSize(I)F
.end method

.method private static native native_getSize(J)F
.end method

.method private static native native_getStrokeRect(I[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
.end method

.method private static native native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
.end method

.method private static native native_init()I
.end method

.method private static native native_init_64()J
.end method

.method private static native native_isCurveEnabled(I)Z
.end method

.method private static native native_isCurveEnabled(J)Z
.end method

.method private static native native_move(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_move(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_onLoad(I)V
.end method

.method private static native native_onLoad(J)V
.end method

.method private static native native_onUnload(I)V
.end method

.method private static native native_onUnload(J)V
.end method

.method private static native native_redraw(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_redraw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_setAdvancedSetting(ILjava/lang/String;)Z
.end method

.method private static native native_setAdvancedSetting(JLjava/lang/String;)Z
.end method

.method private static native native_setBitmap(ILandroid/graphics/Bitmap;)Z
.end method

.method private static native native_setBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_setColor(II)Z
.end method

.method private static native native_setColor(JI)Z
.end method

.method private static native native_setCurveEnabled(IZ)Z
.end method

.method private static native native_setCurveEnabled(JZ)Z
.end method

.method private static native native_setProperty(ILandroid/os/Bundle;)Z
.end method

.method private static native native_setProperty(JLandroid/os/Bundle;)Z
.end method

.method private static native native_setReferenceBitmap(ILandroid/graphics/Bitmap;)Z
.end method

.method private static native native_setReferenceBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_setScreenResolution(III)Z
.end method

.method private static native native_setScreenResolution(JII)Z
.end method

.method private static native native_setSize(IF)Z
.end method

.method private static native native_setSize(JF)Z
.end method

.method private static native native_start(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_start(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
.end method

.method private resetButtonLayout()Landroid/view/View;
    .locals 5

    const/high16 v4, 0x40a00000    # 5.0f

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "reset"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mResetButton:Landroid/view/View;

    return-object v0
.end method

.method private setBeautifyType(I)V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    if-eqz v4, :cond_2

    iput p1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I

    aget-object v4, v4, p1

    aget v3, v4, v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCursiveSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSustenanceSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDummySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mModulationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setAdvancedSetting(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;->onChanged(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x6

    if-ge v0, v4, :cond_2

    if-ne p1, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_3

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
    .end array-data
.end method

.method private setListener()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    new-instance v2, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;-><init>(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCursiveSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCursiveSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSeekBarListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSustenanceSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSustenanceSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSeekBarListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDummySeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDummySeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSeekBarListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mModulationSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mModulationSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSeekBarListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mResetButton:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mResetButton:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mResetButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method private sustenanceLayout()Landroid/view/View;
    .locals 8

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->sustenanceSeekbar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "sustenance"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    const/high16 v4, 0x40900000    # 4.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private sustenanceSeekbar()Landroid/widget/SeekBar;
    .locals 15

    const/16 v14, 0xa0

    const/4 v13, 0x1

    const/4 v2, 0x0

    new-instance v10, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v9, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x10

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v4, "eraser_handel"

    const-string v5, "eraser_handel_press"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v5, v12}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v7, v8, v4, v13}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const-string v4, "eraser_bar"

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    const/16 v4, 0xa

    if-gt v11, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_0

    const/high16 v4, 0x40d00000    # 6.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v4, 0x2

    new-array v6, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    aput-object v7, v6, v13

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v10, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSustenanceSeekBar:Landroid/widget/SeekBar;

    return-object v10

    :cond_0
    const/high16 v4, 0x40b00000    # 5.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v14, :cond_2

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_2
    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->calculatePixel(F)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public construct()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_construct(J)Z

    return-void
.end method

.method public draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v4, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_draw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAdvancedSetting()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getAdvancedSetting(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColor()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getColor(J)I

    move-result v0

    return v0
.end method

.method public getMaxSettingValue()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getMaxSettingValue(J)F

    move-result v0

    return v0
.end method

.method public getMinSettingValue()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getMinSettingValue(J)F

    move-result v0

    return v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    return-wide v0
.end method

.method public getPenAttribute(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getPenAttribute(JI)Z

    move-result v0

    return v0
.end method

.method public getPrivateKeyHint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Landroid/os/Bundle;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getProperty(JLandroid/os/Bundle;)Z

    return-void
.end method

.method public getSize()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getSize(J)F

    move-result v0

    return v0
.end method

.method public getStrokeRect([Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
    .locals 10

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public hideAdvancedSetting()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public isCurveEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_isCurveEnabled(J)Z

    move-result v0

    return v0
.end method

.method public onLoad(Landroid/content/Context;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_onLoad(J)V

    return-void
.end method

.method public onUnload()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_onUnload(J)V

    return-void
.end method

.method public redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v4, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_redraw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setAdvancedSetting(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_setAdvancedSetting(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_setBitmap(JLandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_setColor(JI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCurveEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_setCurveEnabled(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v4, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v4, "TAG"

    const-string v5, "Resource loading is Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_setProperty(JLandroid/os/Bundle;)Z

    return-void
.end method

.method public setReferenceBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setScreenResolution(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_setScreenResolution(JII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSize(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->nativeBeautify:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->Native_setSize(JF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAdvancedSetting(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDensity:F

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->initView()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setListener()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    iput v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setBeautifyType(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mAdvancedSettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
