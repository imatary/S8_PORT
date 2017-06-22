.class public Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;
.super Ljava/lang/Object;
.source "MagicPen.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIs64:Z

.field public final nativeMagicPen:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private Native_construct(J)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_construct(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_construct(I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_draw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_draw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_draw(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_getAdvancedSetting(J)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getAdvancedSetting(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getAdvancedSetting(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private Native_getColor(J)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getColor(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private Native_getMaxSettingValue(J)F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getMaxSettingValue(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getMaxSettingValue(I)F

    move-result v0

    goto :goto_0
.end method

.method private Native_getMinSettingValue(J)F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getMinSettingValue(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getMinSettingValue(I)F

    move-result v0

    goto :goto_0
.end method

.method private Native_getPenAttribute(JI)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getPenAttribute(JI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getPenAttribute(II)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_getProperty(JLandroid/os/Bundle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getProperty(JLandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getProperty(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_getSize(J)F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getSize(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getSize(I)F

    move-result v0

    goto :goto_0
.end method

.method private Native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p8}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

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

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_getStrokeRect(I[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method private Native_init()J
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_init_64()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_init()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private Native_isCurveEnabled(J)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_isCurveEnabled(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_isCurveEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_onLoad(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_onLoad(J)V

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_onLoad(I)V

    goto :goto_0
.end method

.method private Native_onUnload(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_onUnload(J)V

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_onUnload(I)V

    goto :goto_0
.end method

.method private Native_redraw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_redraw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3, p4, p5}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_redraw(ILandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setAdvancedSetting(JLjava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setAdvancedSetting(JLjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setAdvancedSetting(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setBitmap(JLandroid/graphics/Bitmap;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setBitmap(JLandroid/graphics/Bitmap;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setBitmap(ILandroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setColor(JI)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setColor(JI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setColor(II)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setCurveEnabled(JZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setCurveEnabled(JZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setCurveEnabled(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setProperty(JLandroid/os/Bundle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setProperty(JLandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setProperty(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setScreenResolution(JII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setScreenResolution(JII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3, p4}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setScreenResolution(III)Z

    move-result v0

    goto :goto_0
.end method

.method private Native_setSize(JF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setSize(JF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    long-to-int v0, p1

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setSize(IF)Z

    move-result v0

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


# virtual methods
.method public construct()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_construct(J)Z

    return-void
.end method

.method public draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v4, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_draw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

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

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getAdvancedSetting(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColor()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getColor(J)I

    move-result v0

    return v0
.end method

.method public getMaxSettingValue()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getMaxSettingValue(J)F

    move-result v0

    return v0
.end method

.method public getMinSettingValue()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getMinSettingValue(J)F

    move-result v0

    return v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    return-wide v0
.end method

.method public getPenAttribute(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getPenAttribute(JI)Z

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

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getProperty(JLandroid/os/Bundle;)Z

    return-void
.end method

.method public getSize()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getSize(J)F

    move-result v0

    return v0
.end method

.method public getStrokeRect([Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
    .locals 10

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public hideAdvancedSetting()V
    .locals 0

    return-void
.end method

.method public isCurveEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_isCurveEnabled(J)Z

    move-result v0

    return v0
.end method

.method public onLoad(Landroid/content/Context;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_onLoad(J)V

    return-void
.end method

.method public onUnload()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_onUnload(J)V

    return-void
.end method

.method public redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v4, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_redraw(JLandroid/view/MotionEvent;Landroid/graphics/RectF;I)Z

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
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_setAdvancedSetting(JLjava/lang/String;)Z

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

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_setBitmap(JLandroid/graphics/Bitmap;)Z

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

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_setColor(JI)Z

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

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_setCurveEnabled(JZ)Z

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

.method public setProperty(Landroid/os/Bundle;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_setProperty(JLandroid/os/Bundle;)Z

    return-void
.end method

.method public setReferenceBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->mIs64:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setReferenceBitmap(JLandroid/graphics/Bitmap;)Z

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->native_setReferenceBitmap(ILandroid/graphics/Bitmap;)Z

    goto :goto_0
.end method

.method public setScreenResolution(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_setScreenResolution(JII)Z

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

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->nativeMagicPen:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/preload/MagicPen;->Native_setSize(JF)Z

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
    .locals 0

    return-void
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
