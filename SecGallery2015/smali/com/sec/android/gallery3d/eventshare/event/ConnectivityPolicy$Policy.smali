.class Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;
.super Ljava/lang/Object;
.source "ConnectivityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Policy"
.end annotation


# static fields
.field private static final CURRENT_MASK:I = 0x7

.field private static final CURRENT_START_BIT:I = 0x0

.field static final POLICY_FAIL:I = 0x3

.field static final POLICY_WAIT:I = 0x1

.field static final POLICY_WAKEUP:I = 0x2

.field private static final PREVISOUS_MASK:I = 0x38

.field private static final PREVISOUS_START_BIT:I = 0x3


# instance fields
.field private mKey:I

.field private mOperation:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;-><init>()V

    return-void
.end method


# virtual methods
.method getKey()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mKey:I

    return v0
.end method

.method getValue()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mOperation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mKey:I

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mOperation:I

    return-void
.end method

.method setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :goto_0
    or-int/2addr v0, v2

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v0, v2

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    or-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mKey:I

    and-int/lit8 v2, v0, 0x7

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mKey:I

    return-object p0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method setOperation(I)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mOperation:I

    return-object p0
.end method

.method setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0x20

    :goto_0
    or-int/2addr v0, v2

    if-eqz p2, :cond_2

    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    if-eqz p3, :cond_0

    const/16 v1, 0x8

    :cond_0
    or-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mKey:I

    and-int/lit8 v2, v0, 0x38

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->mKey:I

    return-object p0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method
