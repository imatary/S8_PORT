.class final Landroid/icu/text/TitlecaseTransliterator$1;
.super Ljava/lang/Object;
.source "TitlecaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/TitlecaseTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 2

    new-instance v0, Landroid/icu/text/TitlecaseTransliterator;

    sget-object v1, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/TitlecaseTransliterator;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method
