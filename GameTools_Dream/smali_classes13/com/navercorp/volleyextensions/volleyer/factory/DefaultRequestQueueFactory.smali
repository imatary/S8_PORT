.class public Lcom/navercorp/volleyextensions/volleyer/factory/DefaultRequestQueueFactory;
.super Ljava/lang/Object;
.source "DefaultRequestQueueFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 4

    const-string/jumbo v3, "Context"

    invoke-static {p0, v3}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultRequestQueueFactory;->getDefaultDiskCache(Landroid/content/Context;)Lcom/android/volley/Cache;

    move-result-object v0

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/HttpStackFactory;->createDefaultHttpStack()Lcom/android/volley/toolbox/HttpStack;

    move-result-object v1

    invoke-static {v1}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultRequestQueueFactory;->getDefaultNetwork(Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/Network;

    move-result-object v2

    new-instance v3, Lcom/android/volley/RequestQueue;

    invoke-direct {v3, v0, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    return-object v3
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/volleyer-cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultDiskCache(Landroid/content/Context;)Lcom/android/volley/Cache;
    .locals 2

    invoke-static {p0}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultRequestQueueFactory;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v1}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static getDefaultNetwork(Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/Network;
    .locals 1

    const-string/jumbo v0, "HttpStack"

    invoke-static {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    return-object v0
.end method
