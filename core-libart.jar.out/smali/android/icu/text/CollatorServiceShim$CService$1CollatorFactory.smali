.class Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;
.super Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CollatorServiceShim$CService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollatorFactory"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/CollatorServiceShim$CService;


# direct methods
.method constructor <init>(Landroid/icu/text/CollatorServiceShim$CService;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;->this$1:Landroid/icu/text/CollatorServiceShim$CService;

    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroid/icu/text/CollatorServiceShim;->-wrap0(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method
