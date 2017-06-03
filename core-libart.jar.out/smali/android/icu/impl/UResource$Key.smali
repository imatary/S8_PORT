.class public final Landroid/icu/impl/UResource$Key;
.super Ljava/lang/Object;
.source "UResource.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/UResource$Key;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private length:I

.field private offset:I

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/UResource$Key;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    iput p3, p0, Landroid/icu/impl/UResource$Key;->length:I

    return-void
.end method

.method private internalSubString(II)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    sub-int v2, p2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private regionMatches(ILjava/lang/CharSequence;I)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private regionMatches([BII)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-ltz p1, :cond_0

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v1, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public clone()Landroid/icu/impl/UResource$Key;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/UResource$Key;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/icu/impl/UResource$Key;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/CharSequence;)I
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v4, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt v4, v0, :cond_0

    iget v3, p0, Landroid/icu/impl/UResource$Key;->length:I

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int v1, v4, v5

    if-eqz v1, :cond_1

    return v1

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr v4, v0

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/impl/UResource$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Landroid/icu/impl/UResource$Key;)I

    move-result v0

    return v0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eq p0, p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, v0, p1, v1}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endsWith(Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt v0, v1, :cond_0

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/icu/impl/UResource$Key;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/UResource$Key;

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    iget v3, v0, Landroid/icu/impl/UResource$Key;->length:I

    if-ne v2, v3, :cond_2

    iget-object v1, v0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, v0, Landroid/icu/impl/UResource$Key;->offset:I

    iget v3, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/UResource$Key;->regionMatches([BII)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    aget-byte v0, v2, v3

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v4, p0, Landroid/icu/impl/UResource$Key;->offset:I

    aget-byte v3, v3, v4

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    return v0
.end method

.method public regionMatches(ILjava/lang/CharSequence;)Z
    .locals 2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBytes([BI)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    :goto_0
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-void
.end method

.method public setToEmpty()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    iput v0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    iput-object v1, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-void
.end method

.method public startsWith(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt v0, v2, :cond_0

    invoke-direct {p0, v1, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public subSequence(II)Landroid/icu/impl/UResource$Key;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p1, :cond_0

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge p1, v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    if-gt p1, p2, :cond_2

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt p2, v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/icu/impl/UResource$Key;

    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/UResource$Key;-><init>([BII)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->subSequence(II)Landroid/icu/impl/UResource$Key;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-ltz p1, :cond_0

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p1, :cond_0

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge p1, v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    if-gt p1, p2, :cond_2

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt p2, v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-object v0
.end method
