.class public Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ControlPaint"
.end annotation


# static fields
.field public static final BORDER_DASHED:I = 0x2

.field public static final BORDER_LINE:I = 0x1

.field public static final BORDER_STATIC_LINE_WIDTH:I = 0x4

.field public static final BORDER_TEXTBOX_LINE:I = 0x7

.field private static final DEFAULT_BORDER_DASHED:I = -0xff472c

.field private static final DEFAULT_BORDER_LINE_COLOR:I = -0xff472c

.field protected static final DEFAULT_BORDER_WIDTH:I = 0x1

.field private static final DEFAULT_COLOR_CONNECT_POINT_ICON:I = -0xbbcca

.field private static final DEFAULT_COLOR_HANDLE_CONTROL_POINT_ICON:I = -0x14c5

.field private static final DEFAULT_COLOR_HANDLE_RESIZE_ICON:I = -0xff472c

.field private static final DEFAULT_COLOR_HANDLE_ROTATE_ICON:I = -0xff472c

.field private static final DEFAULT_MOVING_RECT_COLOR:I = -0xffff01

.field private static final DEFAULT_TYPE_WIDE_BORDER_WIDTH:I = 0x6

.field public static final DEGREE_RECT:I = 0x4

.field public static final DEGREE_TEXT:I = 0x5

.field public static final DIMMING_WINDOW:I = 0x3

.field public static final DRAW_ROTATED_BITMAP:I = 0xc

.field public static final HANDLE_CONNECT_ICON:I = 0xb

.field public static final HANDLE_EDIT_ICON:I = 0xa

.field public static final HANDLE_RESIZE_ICON:I = 0x9

.field public static final HANDLE_ROTATE_ICON:I = 0x8

.field public static final HIGHLIGHT_STROKE:I = 0x6

.field public static final HIGHLIGHT_STROKE_HOLE_EFFECT:I = 0xf

.field public static final MOVING_OBJECT_MIN_MAX_RESTRICTED_PAINT:I = 0xe

.field public static final MOVING_OBJECT_PAINT:I = 0x0

.field private static final MOVING_OBJECT_PAINT2:I = 0xd

.field public static final PAINT_MAX:I = 0x10


# instance fields
.field private final mBorderWidth:I

.field private final mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private final mDensity:F

.field private mPaint:[Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mDensity:F

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    mul-float v0, v2, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->initPaint()V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 11

    const/4 v10, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v7, 0x1

    const v6, -0xff472c

    const/16 v2, 0x10

    new-array v2, v2, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mPaint:[Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mPaint:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mPaint:[Landroid/graphics/Paint;

    aget-object v1, v2, v0

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getType()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getType()I

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mDensity:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_0

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_1

    :pswitch_5
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getType()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_1

    :pswitch_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_1

    :pswitch_7
    const v2, -0x99999a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    :pswitch_8
    const/high16 v2, 0x41600000    # 14.0f

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mDensity:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_9
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_a
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_d
    const/16 v2, -0x14c5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_e
    const v2, -0xbbcca

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setDither(Z)V

    goto/16 :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    goto :goto_0
.end method
