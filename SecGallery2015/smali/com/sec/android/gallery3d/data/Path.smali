.class public Lcom/sec/android/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Path"

.field private static sRoot:Lcom/sec/android/gallery3d/data/Path; = null

.field private static final serialVersionUID:J = -0x3ad6ca21cdf6e292L


# instance fields
.field private transient mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private transient mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/sec/android/gallery3d/data/Path;

.field private mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string/jumbo v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/Path;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-void
.end method

.method static clearAll()V
    .locals 4

    const-class v1, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/sec/android/gallery3d/data/Path;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, v2, v3}, Lcom/sec/android/gallery3d/data/Path;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll()V
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/data/Path;->dumpAll(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static dumpAll(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-class v7, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v5

    const-string/jumbo v8, "Path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v5, :cond_0

    const-string/jumbo v6, "null"

    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/Path;->mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/Path;->mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/util/IdentityCache;->keys()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/Path;->mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "Path"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "+-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/sec/android/gallery3d/data/Path;->dumpAll(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "+-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/sec/android/gallery3d/data/Path;->dumpAll(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 5

    const-class v4, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    monitor-exit v4

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    move-object v3, v0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static fromString([Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    return-object v2
.end method

.method private getPrefixPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 4

    const-class v2, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v2

    move-object v0, p0

    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    sget-object v3, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    if-eq v1, v3, :cond_1

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/16 v8, 0x2f

    const/4 v7, 0x0

    if-nez p0, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    new-array v5, v7, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_2

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v4, :cond_8

    const/4 v0, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x7b

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    if-nez v0, :cond_3

    if-ne v1, v8, :cond_3

    :cond_6
    if-eqz v0, :cond_7

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const/16 v11, 0x7b

    const/4 v10, 0x0

    const/16 v9, 0x7d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_2

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_8

    const/4 v0, 0x0

    move v3, v2

    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-ne v1, v9, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    if-nez v0, :cond_3

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_3

    :cond_6
    if-eqz v0, :cond_7

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v5
.end method


# virtual methods
.method public getChild(I)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 4

    const-class v3, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/Path;->mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/util/IdentityCache;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/Path;->mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/Path;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/Path;->mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/Path;->mChildren:Lcom/sec/android/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    if-eqz v0, :cond_0

    monitor-exit v3

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getObject()Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/sec/android/gallery3d/data/Path;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Path;->getPrefixPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-void
.end method

.method public removeObject()V
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setObject(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public split()[Ljava/lang/String;
    .locals 7

    const-class v6, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v6

    const/4 v2, 0x0

    move-object v3, p0

    :goto_0
    :try_start_0
    sget-object v5, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v3, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0

    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    add-int/lit8 v0, v2, -0x1

    move-object v3, p0

    move v1, v0

    :goto_1
    sget-object v5, Lcom/sec/android/gallery3d/data/Path;->sRoot:Lcom/sec/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_1

    add-int/lit8 v0, v1, -0x1

    iget-object v5, v3, Lcom/sec/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v3, v3, Lcom/sec/android/gallery3d/data/Path;->mParent:Lcom/sec/android/gallery3d/data/Path;

    move v1, v0

    goto :goto_1

    :cond_1
    monitor-exit v6

    return-object v4

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-class v4, Lcom/sec/android/gallery3d/data/Path;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
