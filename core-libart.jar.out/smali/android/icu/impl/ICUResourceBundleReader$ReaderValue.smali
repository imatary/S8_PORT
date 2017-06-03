.class Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
.super Landroid/icu/impl/UResource$Value;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderValue"
.end annotation


# instance fields
.field reader:Landroid/icu/impl/ICUResourceBundleReader;

.field private res:I


# direct methods
.method static synthetic -set0(Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;I)I
    .locals 0

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    return p1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/UResource$Value;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getInt()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result v0

    return v0
.end method

.method public getIntVector()[I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getType()I
    .locals 2

    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-get1()[I

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getUInt()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    move-result v0

    return v0
.end method
