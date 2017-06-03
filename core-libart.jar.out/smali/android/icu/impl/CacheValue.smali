.class public abstract Landroid/icu/impl/CacheValue;
.super Ljava/lang/Object;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CacheValue$NullValue;,
        Landroid/icu/impl/CacheValue$SoftValue;,
        Landroid/icu/impl/CacheValue$Strength;,
        Landroid/icu/impl/CacheValue$StrongValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Landroid/icu/impl/CacheValue;

.field private static volatile strength:Landroid/icu/impl/CacheValue$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    sput-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    new-instance v0, Landroid/icu/impl/CacheValue$NullValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/CacheValue$NullValue;-><init>(Landroid/icu/impl/CacheValue$NullValue;)V

    sput-object v0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static futureInstancesWillBeStrong()Z
    .locals 2

    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Landroid/icu/impl/CacheValue",
            "<TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object v0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/icu/impl/CacheValue$StrongValue;

    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$StrongValue;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/icu/impl/CacheValue$SoftValue;

    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$SoftValue;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setStrength(Landroid/icu/impl/CacheValue$Strength;)V
    .locals 0

    sput-object p0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    return-void
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
