.class Landroid/icu/text/CollatorServiceShim$1CFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CollatorServiceShim;->registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CFactory"
.end annotation


# instance fields
.field delegate:Landroid/icu/text/Collator$CollatorFactory;

.field final synthetic this$0:Landroid/icu/text/CollatorServiceShim;


# direct methods
.method constructor <init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->this$0:Landroid/icu/text/CollatorServiceShim;

    invoke-virtual {p2}, Landroid/icu/text/Collator$CollatorFactory;->visible()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    iput-object p2, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {v1, v0, p2}, Landroid/icu/text/Collator$CollatorFactory;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedIDs()Ljava/util/Set;
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

    iget-object v0, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {v0}, Landroid/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {v1, p1}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method
