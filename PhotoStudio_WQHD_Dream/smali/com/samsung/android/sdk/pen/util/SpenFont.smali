.class public Lcom/samsung/android/sdk/pen/util/SpenFont;
.super Ljava/lang/Object;
.source "SpenFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT:Ljava/lang/String; = "Roboto-Regular"

.field private static TAG:Ljava/lang/String;

.field private static isInit:Z

.field private static final mFontAccess:[Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

.field private static mFontListMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFontListMapAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mFontNameMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMutex:Ljava/lang/Object;

.field private static mTypeFaceMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFontNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    new-instance v1, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v2, "Roboto-Regular"

    const-string v3, "Roboto"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "Roboto-Light"

    const-string v4, "Roboto Light"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "RobotoCondensed-Light"

    const-string v4, "Roboto Condensed Light"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "RobotoCondensed-Regular"

    const-string v4, "Roboto Condensed"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "DroidSansMono"

    const-string v4, "Droid Sans Mono"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "NotoSerif-Regular"

    const-string v4, "Noto Serif"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "SECCutiveMono"

    const-string v4, "Cutive Mono"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "ComingSoon"

    const-string v4, "Coming Soon"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "DancingScript-Regular"

    const-string v4, "Dancing Script"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "CarroisGothicSC-Regular"

    const-string v4, "Carrois Gothic SC"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "Arial"

    const-string v4, "Arial"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "Cour"

    const-string v4, "Courier New"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "Times"

    const-string v4, "Times New Roman"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "Tahoma"

    const-string v4, "Tahoma"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const-string v3, "Verdana"

    const-string v4, "Verdana"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontAccess:[Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    sput-boolean v5, Lcom/samsung/android/sdk/pen/util/SpenFont;->isInit:Z

    const-string v0, "SpenFont"

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNameMap:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMap:Ljava/util/TreeMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNames:Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenFont;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenFont;->native_setLocale(Ljava/lang/String;)Z

    sget-boolean v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->isInit:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNameMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNames:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/util/SpenFont;->getFontTypeList(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    const-string v4, "Init SPenFont"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->isInit:Z

    :goto_1
    monitor-exit v3

    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    const-string v4, "Already Init"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static convertFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tahoma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string p0, "Tahoma"

    :cond_0
    return-object p0
.end method

.method public static getFontList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenFont;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFontListMap: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getFontName(I)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenFont;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNameMap:Ljava/util/TreeMap;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenFont;->convertFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNameMap:Ljava/util/TreeMap;

    const-string v3, "Roboto-Regular"

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFontTypeList(Landroid/content/Context;)V
    .locals 18

    new-instance v10, Ljava/io/File;

    const-string v11, "/system/fonts/"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v6, 0x0

    :goto_0
    array-length v11, v3

    if-ge v6, v11, :cond_4

    aget-object v1, v3, v6

    sget-object v12, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontAccess:[Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_1

    aget-object v2, v12, v11

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontFile:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".ttf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    iget-object v15, v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontFile:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/system/fonts/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontFile:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".ttf"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNameMap:Ljava/util/TreeMap;

    iget-object v15, v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontFile:Ljava/lang/String;

    iget-object v0, v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMap:Ljava/util/TreeMap;

    iget-object v15, v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontFile:Ljava/lang/String;

    iget-object v0, v2, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNames:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1 added fontName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNameMap:Ljava/util/TreeMap;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v4, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMap:Ljava/util/TreeMap;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v4, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "local folder="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v6, 0x0

    :goto_3
    array-length v11, v3

    if-ge v6, v11, :cond_7

    aget-object v1, v3, v6

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNames:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_5

    sget-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "local folder2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "2 added fontName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontNameMap:Ljava/util/TreeMap;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v4, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMap:Ljava/util/TreeMap;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v4, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    sget-object v12, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMap:Ljava/util/TreeMap;

    invoke-virtual {v12}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    sget-object v11, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    new-instance v12, Lcom/samsung/android/sdk/pen/util/SpenFont$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/android/sdk/pen/util/SpenFont$1;-><init>(Lcom/samsung/android/sdk/pen/util/SpenFont;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v11, "/system/csc/common/system/fonts/"

    invoke-static {v11}, Lcom/samsung/android/sdk/pen/util/SpenFont;->native_appendFontPath(Ljava/lang/String;)Z

    const-string v11, "/system/fonts/"

    invoke-static {v11}, Lcom/samsung/android/sdk/pen/util/SpenFont;->native_appendFontPath(Ljava/lang/String;)Z

    invoke-static {v9}, Lcom/samsung/android/sdk/pen/util/SpenFont;->native_appendFontPath(Ljava/lang/String;)Z

    return-void
.end method

.method public static getTypeFace(I)Landroid/graphics/Typeface;
    .locals 3

    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenFont;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenFont;->mFontListMapAccess:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getTypeFace(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenFont;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenFont;->convertFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenFont;->mTypeFaceMap:Ljava/util/TreeMap;

    const-string v3, "Roboto-Regular"

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native native_appendFontPath(Ljava/lang/String;)Z
.end method

.method private static native native_setLocale(Ljava/lang/String;)Z
.end method
