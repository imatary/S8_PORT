.class Landroid/icu/text/SpoofChecker$ScriptSet;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScriptSet"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private bits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker$ScriptSet;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public Union(I)V
    .locals 4

    const/4 v2, 0x1

    div-int/lit8 v1, p1, 0x20

    and-int/lit8 v3, p1, 0x1f

    shl-int v0, v2, v3

    sget-boolean v3, Landroid/icu/text/SpoofChecker$ScriptSet;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x4

    if-ge v1, v3, :cond_0

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v3, v2, v1

    or-int/2addr v3, v0

    aput v3, v2, v1

    return-void
.end method

.method public Union(Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public countMembers()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v2, v3, v1

    :goto_1
    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Landroid/icu/text/SpoofChecker$ScriptSet;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    iget-object v2, v0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1
.end method

.method public intersect(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    div-int/lit8 v2, p1, 0x20

    and-int/lit8 v5, p1, 0x1f

    shl-int v0, v3, v5

    sget-boolean v5, Landroid/icu/text/SpoofChecker$ScriptSet;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x4

    if-ge v2, v5, :cond_0

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v5, v3, v2

    and-int/2addr v5, v0

    aput v5, v3, v2

    add-int/lit8 v1, v2, 0x1

    :goto_2
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public intersect(Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public output(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetAll()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAll()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
