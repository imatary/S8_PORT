.class Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ULocaleAcceptLanguageQ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;",
        ">;"
    }
.end annotation


# instance fields
.field private q:D

.field private serial:D


# direct methods
.method public constructor <init>(DI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    int-to-double v0, p3

    iput-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    return v4

    :cond_0
    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    return v5

    :cond_1
    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    return v4

    :cond_2
    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    return v5

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->compareTo(Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;)I

    move-result v0

    return v0
.end method
