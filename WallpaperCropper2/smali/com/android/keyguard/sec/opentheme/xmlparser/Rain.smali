.class public Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final MIN_Y_SPEED:I = 0x6

.field private static final X_OFFSET:I = 0x10

.field private static final Y_SPEED_SEED:I = 0x2

.field private static final speed:[D


# instance fields
.field private mRandom:Ljava/util/Random;

.field private mXSpeed:D

.field private mYSpeed:I

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide v6, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    aput-wide v8, v0, v1

    const/4 v1, 0x6

    aput-wide v8, v0, v1

    const/4 v1, 0x7

    aput-wide v10, v0, v1

    const/16 v1, 0x8

    aput-wide v10, v0, v1

    const/16 v1, 0x9

    aput-wide v6, v0, v1

    const/16 v1, 0xa

    aput-wide v6, v0, v1

    const/16 v1, 0xb

    aput-wide v6, v0, v1

    const/16 v1, 0xc

    aput-wide v4, v0, v1

    const/16 v1, 0xd

    aput-wide v4, v0, v1

    const/16 v1, 0xe

    aput-wide v4, v0, v1

    const/16 v1, 0xf

    aput-wide v4, v0, v1

    sput-object v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->speed:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mRandom:Ljava/util/Random;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mRandom:Ljava/util/Random;

    const/16 v1, 0x148

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->x:F

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mRandom:Ljava/util/Random;

    const/16 v1, 0x280

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->y:F

    sget-object v0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->speed:[D

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mRandom:Ljava/util/Random;

    sget-object v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->speed:[D

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mXSpeed:D

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mRandom:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mYSpeed:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mRandom:Ljava/util/Random;

    const/16 v1, 0x148

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->x:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->y:F

    return-void
.end method

.method public isVisible()Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->x:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->y:F

    const/high16 v1, 0x44200000    # 640.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->x:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mXSpeed:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->x:F

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->y:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->y:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->clear()V

    goto :goto_0
.end method
