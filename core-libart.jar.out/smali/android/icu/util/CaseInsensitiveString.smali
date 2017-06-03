.class public Landroid/icu/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "CaseInsensitiveString.java"


# instance fields
.field private folded:Ljava/lang/String;

.field private hash:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-void
.end method

.method private static foldCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFolded()V
    .locals 1

    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/CaseInsensitiveString;->foldCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    instance-of v1, p1, Landroid/icu/util/CaseInsensitiveString;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    move-object v0, p1

    nop

    nop

    invoke-direct {v0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    iget-object v1, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    return v2
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    iget v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    :cond_0
    iget v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object v0
.end method
