.class public Lcom/samsung/android/sdk/pen/pen/SpenPen;
.super Ljava/lang/Object;
.source "SpenPen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;
    }
.end annotation


# static fields
.field public static final PEN_ATTRIBUTE_ADVANCED_SETTING:I = 0x4

.field public static final PEN_ATTRIBUTE_ALPHA:I = 0x1

.field public static final PEN_ATTRIBUTE_COLOR:I = 0x2

.field public static final PEN_ATTRIBUTE_CURVE:I = 0x3

.field public static final PEN_ATTRIBUTE_SIZE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;

.field private mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "E_INVALID_ARG : parameter \'penObject\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/pen/SpenPen;)Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    return-void
.end method

.method public draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "E_INVALID_STATE : event is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAdvancedSetting()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getAdvancedSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxSettingValue()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMaxSettingValue()F

    move-result v0

    return v0
.end method

.method public getMinSettingValue()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getMinSettingValue()F

    move-result v0

    return v0
.end method

.method public getPenAttribute(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v0

    return v0
.end method

.method getPenObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    return-object v0
.end method

.method public getSize()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getSize()F

    move-result v0

    return v0
.end method

.method public getStrokeRect(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)Landroid/graphics/RectF;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPoints()[Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPressures()[F

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getTimeStamps()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->isCurveEnabled()Z

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getAdvancedPenSetting()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getStrokeRect([Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public hideAdvancedSetting()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : Recognition is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->hideAdvancedSetting()V

    return-void
.end method

.method public isCurveEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->isCurveEnabled()Z

    move-result v0

    return v0
.end method

.method public redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "E_INVALID_STATE : event is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setAdvancedSetting(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setAdvancedSetting(Ljava/lang/String;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    return-void
.end method

.method public setCurveEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setCurveEnabled(Z)V

    return-void
.end method

.method public setReferenceBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setReferenceBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, "pen is not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x7

    const-string v1, "pen size is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    return-void
.end method

.method public showAdvancedSetting(Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "E_INVALID_ARG : parameter \'listener\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : Recognition is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mPenObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/sdk/pen/pen/SpenPen$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPen$1;-><init>(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    invoke-interface {v0, v1, v2, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->showAdvancedSetting(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;Landroid/view/ViewGroup;)V

    return-void
.end method
