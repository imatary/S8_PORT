.class Landroid/icu/impl/locale/BaseLocale$Key;
.super Ljava/lang/Object;
.source "BaseLocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/locale/BaseLocale$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile _hash:I

.field private _lang:Ljava/lang/String;

.field private _regn:Ljava/lang/String;

.field private _scrt:Ljava/lang/String;

.field private _vart:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    :cond_2
    if-eqz p4, :cond_3

    iput-object p4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static normalize(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;
    .locals 5

    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/icu/impl/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/locale/BaseLocale$Key;)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/BaseLocale$Key;->compareTo(Landroid/icu/impl/locale/BaseLocale$Key;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Landroid/icu/impl/locale/BaseLocale$Key;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_hash:I

    if-nez v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_hash:I

    :cond_4
    return v0
.end method
