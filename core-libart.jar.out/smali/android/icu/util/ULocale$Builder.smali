.class public final Landroid/icu/util/ULocale$Builder;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final _locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public build()Landroid/icu/util/ULocale;
    .locals 2

    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->-wrap2(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public clear()Landroid/icu/util/ULocale$Builder;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clear()Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public clearExtensions()Landroid/icu/util/ULocale$Builder;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setExtension(CLjava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 5

    new-instance v0, Landroid/icu/impl/locale/ParseStatus;

    invoke-direct {v0}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    invoke-static {p1, v0}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v2, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-static {p1}, Landroid/icu/util/ULocale;->-wrap0(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v2

    invoke-static {p1}, Landroid/icu/util/ULocale;->-wrap1(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setVariant(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
