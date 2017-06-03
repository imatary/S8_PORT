.class Landroid/icu/text/RelativeDateTimeFormatter$Cache;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    if-nez v1, :cond_0

    new-instance v2, Landroid/icu/text/RelativeDateTimeFormatter$Loader;

    invoke-direct {v2, p1}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {v2}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method
