.class final Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;
.super Landroid/icu/impl/UResource$TableSink;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoneStringsLoader"
.end annotation


# static fields
.field private static final INITIAL_NUM_ZONES:I = 0x12c


# instance fields
.field private keyToLoader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/impl/UResource$Key;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/icu/impl/TimeZoneNamesImpl;


# direct methods
.method private constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl;)V
    .locals 2

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;)V

    return-void
.end method

.method private mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v1, "meta:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/16 v0, 0x2f

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v4

    if-ne v0, v4, :cond_0

    return-object v5

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    const-string/jumbo v4, "meta:"

    invoke-virtual {p1, v4}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v4}, Landroid/icu/impl/TimeZoneNamesImpl;->-get1(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v4}, Landroid/icu/impl/TimeZoneNamesImpl;->-get2(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forTimeZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method load()V
    .locals 10

    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v8}, Landroid/icu/impl/TimeZoneNamesImpl;->-get3(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V

    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/UResource$Key;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v8

    if-eq v3, v8, :cond_0

    const-string/jumbo v8, "meta:"

    invoke-virtual {v2, v8}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-wrap0(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v5

    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v8}, Landroid/icu/impl/TimeZoneNamesImpl;->-get1(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-wrap0(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v8}, Landroid/icu/impl/TimeZoneNamesImpl;->-get2(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public putNoFallback(Landroid/icu/impl/UResource$Key;)V
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object v1

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
