.class abstract Lcom/sec/android/gallery3d/data/MediaSourceProvider;
.super Ljava/lang/Object;
.source "MediaSourceProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSourceProvider"


# instance fields
.field private mActiveCount:I

.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field final mSourceClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/data/MediaSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceClassMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mActiveCount:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->initializeSourceMap()V

    return-void
.end method

.method private addSource(Lcom/sec/android/gallery3d/data/MediaSource;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createSourceInstance(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSource;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v1

    :catch_0
    move-exception v0

    :goto_0
    const-string/jumbo v3, "MediaSourceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSource() : prefix : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private initAllSources()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceClassMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/data/MediaSource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceClassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getAllSources()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->initAllSources()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceClassMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSource;

    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->createSourceInstance(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->addSource(Lcom/sec/android/gallery3d/data/MediaSource;)V

    iget v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mActiveCount:I

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSource;->resume()V

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaSourceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSource() : Prefix : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected abstract initializeSourceMap()V
.end method

.method pause()V
    .locals 4

    iget v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mActiveCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mActiveCount:I

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSource;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSource;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method resume()V
    .locals 4

    iget v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSource;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSource;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method
