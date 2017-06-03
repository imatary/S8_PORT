.class public Landroid/icu/util/OverlayBundle;
.super Ljava/util/ResourceBundle;
.source "OverlayBundle.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private baseNames:[Ljava/lang/String;

.field private bundles:[Ljava/util/ResourceBundle;

.field private locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    iput-object p1, p0, Landroid/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    array-length v0, p1

    new-array v0, v0, [Ljava/util/ResourceBundle;

    iput-object v0, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    return-void
.end method

.method private load(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v3, v3, p1

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    iget-object v5, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    aput-object v4, v3, p1

    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v3, v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "xx"

    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    aput-object v4, v3, p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    throw v0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v3, v3, p1

    if-nez v3, :cond_2

    throw v0
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Landroid/icu/util/OverlayBundle;->load(I)V

    iget-object v1, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    invoke-direct {p0, v1}, Landroid/icu/util/OverlayBundle;->load(I)V

    :try_start_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    throw v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
