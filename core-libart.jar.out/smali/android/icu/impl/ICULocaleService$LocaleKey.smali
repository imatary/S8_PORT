.class public Landroid/icu/impl/ICULocaleService$LocaleKey;
.super Landroid/icu/impl/ICUService$Key;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleKey"
.end annotation


# static fields
.field public static final KIND_ANY:I = -0x1


# instance fields
.field private currentID:Ljava/lang/String;

.field private fallbackID:Ljava/lang/String;

.field private kind:I

.field private primaryID:Ljava/lang/String;

.field private varstart:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    iput p4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    if-eqz p2, :cond_0

    const-string/jumbo v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iput-object v7, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    :goto_0
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    return-void

    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    const-string/jumbo v3, "root"

    const/4 v1, 0x1

    move-object v0, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iput v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    iput-object v7, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iput v6, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static createWithCanonical(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    invoke-direct {v1, v0, v0, p1, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public static createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public canonicalID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    return-object v0
.end method

.method public canonicalLocale()Landroid/icu/util/ULocale;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public currentDescriptor()Ljava/lang/String;
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    iget-object v4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public currentID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    return-object v0
.end method

.method public currentLocale()Landroid/icu/util/ULocale;
    .locals 4

    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public fallback()Z
    .locals 6

    const/16 v5, 0x5f

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_0

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    return v4

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iput-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    :goto_0
    return v4

    :cond_3
    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    return v3
.end method

.method public isFallbackOf(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->canonicalID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public kind()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    return v0
.end method

.method public prefix()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
