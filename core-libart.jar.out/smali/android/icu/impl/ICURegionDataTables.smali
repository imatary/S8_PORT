.class public Landroid/icu/impl/ICURegionDataTables;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.source "ICURegionDataTables.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "android/icu/impl/data/icudt56b/region"

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object v0

    return-object v0
.end method
