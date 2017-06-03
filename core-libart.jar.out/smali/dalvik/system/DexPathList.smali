.class final Ldalvik/system/DexPathList;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexPathList$Element;
    }
.end annotation


# static fields
.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final zipSeparator:Ljava/lang/String; = "!/"


# instance fields
.field private final definingContext:Ljava/lang/ClassLoader;

.field private dexElements:[Ldalvik/system/DexPathList$Element;

.field private dexElementsSuppressedExceptions:[Ljava/io/IOException;

.field private final nativeLibraryDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeLibraryPathElements:[Ldalvik/system/DexPathList$Element;

.field private final systemNativeLibraryDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "definingContext == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "dexPath == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "optimizedDirectory doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "optimizedDirectory not readable/writable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    iput-object p1, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p4, v1, p1}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    move-result-object v2

    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    invoke-static {p3, v3}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    const-string/jumbo v2, "java.library.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, v1, p1}, Ldalvik/system/DexPathList;->makePathElements(Ljava/util/List;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    move-result-object v2

    iput-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$Element;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/IOException;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/IOException;

    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    :goto_1
    return-void

    :cond_5
    iput-object v4, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    goto :goto_1
.end method

.method private static loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ldalvik/system/DexFile;

    invoke-direct {v1, p0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    return-object v1

    :cond_0
    invoke-static {p0, p1}, Ldalvik/system/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2, p3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v1

    return-object v1
.end method

.method private static makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Ldalvik/system/DexPathList;->makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    move-result-object v0

    return-object v0
.end method

.method private static makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;Z",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    new-array v4, v14, [Ldalvik/system/DexPathList$Element;

    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    const/4 v13, 0x0

    new-instance v3, Ljava/io/File;

    const-string/jumbo v14, ""

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "!/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "!/"

    const/4 v15, 0x2

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/io/File;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v6, v5

    :goto_1
    if-nez v13, :cond_0

    if-eqz v2, :cond_6

    :cond_0
    add-int/lit8 v5, v6, 0x1

    new-instance v14, Ldalvik/system/DexPathList$Element;

    const/4 v15, 0x0

    invoke-direct {v14, v3, v15, v13, v2}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    aput-object v14, v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v6, v5, 0x1

    new-instance v14, Ldalvik/system/DexPathList$Element;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v7, v15, v0, v1}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    aput-object v14, v4, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez p3, :cond_4

    const-string/jumbo v14, ".dex"

    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v7, v0, v1, v4}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_3
    :goto_2
    move v6, v5

    goto :goto_1

    :catch_0
    move-exception v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to load dex file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_1

    :cond_4
    move-object v13, v7

    if-nez p3, :cond_3

    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v7, v0, v1, v4}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_2

    :catch_1
    move-exception v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_1

    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ClassLoader referenced unknown path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    move v6, v5

    goto/16 :goto_1

    :cond_6
    move v5, v6

    goto/16 :goto_0

    :cond_7
    array-length v14, v4

    if-eq v5, v14, :cond_8

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ldalvik/system/DexPathList$Element;

    :cond_8
    return-object v4
.end method

.method private static makePathElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;)[Ldalvik/system/DexPathList$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Ldalvik/system/DexPathList;->makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    move-result-object v0

    return-object v0
.end method

.method private static makePathElements(Ljava/util/List;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, p2}, Ldalvik/system/DexPathList;->makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    move-result-object v0

    return-object v0
.end method

.method private static optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ".dex"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static splitDexPath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static splitPaths(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v7, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    iget v7, v3, Landroid/system/StructStat;->st_mode:I

    invoke-static {v7}, Landroid/system/OsConstants;->S_ISDIR(I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addDexPath(Ljava/lang/String;Ljava/io/File;)V
    .locals 10

    const/4 v9, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    invoke-static {v6, p2, v4, v7}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    iget-object v2, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v6, v2

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v6, v6, [Ldalvik/system/DexPathList$Element;

    iput-object v6, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v7, v2

    invoke-static {v2, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v7, v2

    array-length v8, v0

    invoke-static {v0, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/IOException;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/IOException;

    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    if-eqz v6, :cond_2

    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    array-length v6, v3

    array-length v7, v1

    add-int v5, v6, v7

    new-array v6, v5, [Ljava/io/IOException;

    iput-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    array-length v7, v3

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    array-length v7, v3

    array-length v8, v1

    invoke-static {v1, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    goto :goto_0
.end method

.method public findClass(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    invoke-static {v2}, Ldalvik/system/DexPathList$Element;->-get0(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1, v6, p2}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v7
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$Element;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    invoke-virtual {v0, v1}, Ldalvik/system/DexPathList$Element;->findNativeLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public getNativeLibraryDirectories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DexPathList["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",nativeLibraryDirectories="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
