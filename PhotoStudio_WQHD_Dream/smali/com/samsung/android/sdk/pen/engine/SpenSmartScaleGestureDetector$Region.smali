.class Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;
.super Ljava/lang/Object;
.source "SpenSmartScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Region"
.end annotation


# instance fields
.field region:Landroid/graphics/Rect;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(IIIIFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->region:Landroid/graphics/Rect;

    iput p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->x:F

    iput p6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->y:F

    return-void
.end method
