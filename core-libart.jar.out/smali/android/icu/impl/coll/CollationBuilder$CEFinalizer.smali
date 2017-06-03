.class final Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
.super Ljava/lang/Object;
.source "CollationBuilder.java"

# interfaces
.implements Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEFinalizer"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private finalCEs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    return-void
.end method


# virtual methods
.method public modifyCE(J)J
    .locals 5

    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->-wrap1(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->-wrap3(J)I

    move-result v1

    aget-wide v0, v0, v1

    const-wide/32 v2, 0xc000

    and-long/2addr v2, p1

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, 0x101000100L

    return-wide v0
.end method

.method public modifyCE32(I)J
    .locals 4

    sget-boolean v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->-wrap0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->-wrap2(I)I

    move-result v1

    aget-wide v0, v0, v1

    and-int/lit16 v2, p1, 0xc0

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide v0, 0x101000100L

    return-wide v0
.end method
