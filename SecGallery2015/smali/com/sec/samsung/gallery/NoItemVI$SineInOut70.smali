.class Lcom/sec/samsung/gallery/NoItemVI$SineInOut70;
.super Landroid/view/animation/PathInterpolator;
.source "NoItemVI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/NoItemVI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SineInOut70"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method