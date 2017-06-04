.class public Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;
.super Ljava/lang/Object;
.source "PathInterpolatorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PathInterpolatorUtils"

.field private static final TYPE_QUINT_EASE_IN:I = 0x12c

.field private static final TYPE_QUINT_EASE_IN_OUT:I = 0x12e

.field public static final TYPE_QUINT_EASE_OUT:I = 0x12d

.field public static final TYPE_SINE_EASE_IN_OUT:I = 0xc8

.field public static final TYPE_SINE_IN_33:I = 0x0

.field private static final TYPE_SINE_IN_50:I = 0x1

.field private static final TYPE_SINE_IN_60:I = 0x2

.field private static final TYPE_SINE_IN_70:I = 0x3

.field private static final TYPE_SINE_IN_80:I = 0x4

.field private static final TYPE_SINE_IN_90:I = 0x5

.field public static final TYPE_SINE_IN_OUT_33:I = 0x64

.field private static final TYPE_SINE_IN_OUT_50:I = 0x65

.field public static final TYPE_SINE_IN_OUT_60:I = 0x66

.field public static final TYPE_SINE_IN_OUT_70:I = 0x67

.field public static final TYPE_SINE_IN_OUT_80:I = 0x68

.field public static final TYPE_SINE_IN_OUT_90:I = 0x69

.field public static final TYPE_SINE_OUT_33:I = 0xa

.field private static final TYPE_SINE_OUT_50:I = 0xb

.field private static final TYPE_SINE_OUT_60:I = 0xc

.field private static final TYPE_SINE_OUT_70:I = 0xd

.field private static final TYPE_SINE_OUT_80:I = 0xe

.field public static final TYPE_SINE_OUT_90:I = 0xf

.field private static final VALUE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->VALUE_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterpolator(I)Landroid/view/animation/Interpolator;
    .locals 5

    sget-object v1, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->VALUE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "PathInterpolatorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInterpolator() INVALID type!! type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
