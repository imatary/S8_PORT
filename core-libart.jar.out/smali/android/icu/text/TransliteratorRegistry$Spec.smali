.class Landroid/icu/text/TransliteratorRegistry$Spec;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spec"
.end annotation


# instance fields
.field private isNextLocale:Z

.field private isSpecLocale:Z

.field private nextSpec:Ljava/lang/String;

.field private res:Landroid/icu/impl/ICUResourceBundle;

.field private scriptName:Ljava/lang/String;

.field private spec:Ljava/lang/String;

.field private top:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    iput-object v6, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iput-object v6, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-static {v4}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "android/icu/impl/data/icudt56b/translit"

    invoke-static {v4, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    return-void

    :catch_0
    move-exception v0

    iput-object v6, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupNext()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    iget-boolean v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Ljava/util/ResourceBundle;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getTop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    return-object v0
.end method

.method public hasFallback()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocale()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
