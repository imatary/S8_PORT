.class final Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Level"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field keys:[I

.field levelBitsList:I

.field mask:I

.field shift:I

.field values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(II)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    and-int/lit8 v0, p1, 0xf

    sget-boolean v4, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    shl-int v1, v3, v0

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method get(I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v3, p1, v3

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int v0, v3, v4

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v1, v3, v0

    if-ne v1, p1, :cond_0

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    return-object v3

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v2, v3, v0

    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_1
    return-object v5
.end method

.method putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v4, p1, v4

    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int v1, v4, v5

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v2, v4, v1

    if-ne v2, p1, :cond_0

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    invoke-static {v4, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-wrap1([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_0
    if-nez v2, :cond_3

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v3, v4, v1

    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput p1, v4, v1

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    invoke-static {p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-wrap0(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    :goto_0
    aput-object v4, v5, v1

    return-object p2

    :cond_2
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    shr-int/lit8 v4, v4, 0x4

    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    iget v6, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    iget v4, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v4, v2, v4

    iget v5, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int v0, v4, v5

    iget-object v4, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput v2, v4, v0

    iget-object v4, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v0

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput v7, v4, v1

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
