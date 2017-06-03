.class Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUDataTable"
.end annotation


# instance fields
.field private final bundle:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;-><init>()V

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method
