.class public abstract Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;
.super Landroid/icu/text/NumberFormat$NumberFormatFactory;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleNumberFormatFactory"
.end annotation


# instance fields
.field final localeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final visible:Z


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Landroid/icu/util/ULocale;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return-void
.end method


# virtual methods
.method public final getSupportedLocaleNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    return-object v0
.end method

.method public final visible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return v0
.end method
