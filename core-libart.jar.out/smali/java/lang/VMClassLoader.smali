.class Ljava/lang/VMClassLoader;
.super Ljava/lang/Object;
.source "VMClassLoader.java"


# static fields
.field private static final bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/VMClassLoader;->createBootClassPathUrlHandlers()[Llibcore/io/ClassPathURLStreamHandler;

    move-result-object v0

    sput-object v0, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBootClassPathUrlHandlers()[Llibcore/io/ClassPathURLStreamHandler;
    .locals 11

    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathEntries()[Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    array-length v8, v0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v0, v7

    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Llibcore/io/ClassPathURLStreamHandler;

    invoke-direct {v4, v1}, Llibcore/io/ClassPathURLStreamHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to open boot classpath entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Llibcore/io/ClassPathURLStreamHandler;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Llibcore/io/ClassPathURLStreamHandler;

    return-object v7
.end method

.method static native findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
.end method

.method private static native getBootClassPathEntries()[Ljava/lang/String;
.end method

.method static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    invoke-virtual {v1, p0}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method static getResources(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    invoke-virtual {v2, p0}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
