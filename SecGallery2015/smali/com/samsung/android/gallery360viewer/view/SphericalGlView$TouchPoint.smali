.class public Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;
.super Ljava/lang/Object;
.source "SphericalGlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gallery360viewer/view/SphericalGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPoint"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->x:F

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->x:F

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->y:F

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->y:F

    return p1
.end method
