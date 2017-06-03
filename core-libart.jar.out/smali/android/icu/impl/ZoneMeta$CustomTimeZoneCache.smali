.class Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;
.super Landroid/icu/impl/SoftCache;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTimeZoneCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/icu/util/SimpleTimeZone;",
        "[I>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;
    .locals 11

    const/16 v7, 0x3b

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    array-length v3, p2

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    aget v3, p2, v5

    if-eq v3, v4, :cond_2

    aget v3, p2, v5

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    :cond_2
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    aget v3, p2, v4

    if-ltz v3, :cond_5

    aget v3, p2, v4

    const/16 v6, 0x17

    if-gt v3, v6, :cond_5

    move v3, v4

    :goto_2
    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_5
    move v3, v5

    goto :goto_2

    :cond_6
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    if-nez v3, :cond_8

    aget v3, p2, v9

    if-ltz v3, :cond_7

    aget v3, p2, v9

    if-gt v3, v7, :cond_7

    move v3, v4

    :goto_3
    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_7
    move v3, v5

    goto :goto_3

    :cond_8
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    if-nez v3, :cond_a

    aget v3, p2, v10

    if-ltz v3, :cond_9

    aget v3, p2, v10

    if-gt v3, v7, :cond_9

    move v3, v4

    :goto_4
    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_9
    move v3, v5

    goto :goto_4

    :cond_a
    aget v6, p2, v4

    aget v7, p2, v9

    aget v8, p2, v10

    aget v3, p2, v5

    if-gez v3, :cond_b

    move v3, v4

    :goto_5
    invoke-static {v6, v7, v8, v3}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v0

    aget v3, p2, v5

    aget v4, p2, v4

    mul-int/lit8 v4, v4, 0x3c

    aget v5, p2, v9

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    aget v5, p2, v10

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    mul-int/lit16 v1, v3, 0x3e8

    new-instance v2, Landroid/icu/util/SimpleTimeZone;

    invoke-direct {v2, v1, v0}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    return-object v2

    :cond_b
    move v3, v5

    goto :goto_5
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;

    move-result-object v0

    return-object v0
.end method
