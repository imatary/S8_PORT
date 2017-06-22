.class public Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CoordinateInfo"
.end annotation


# instance fields
.field public frameRect:Landroid/graphics/RectF;

.field public pan:Landroid/graphics/PointF;

.field public textSettingHeight:I

.field public zoomRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->textSettingHeight:I

    return-void
.end method
