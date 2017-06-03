.class public abstract Landroid/icu/impl/URLHandler;
.super Ljava/lang/Object;
.source "URLHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/URLHandler$FileURLHandler;,
        Landroid/icu/impl/URLHandler$JarURLHandler;,
        Landroid/icu/impl/URLHandler$URLVisitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final PROPNAME:Ljava/lang/String; = "urlhandler.props"

.field private static final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/icu/impl/URLHandler;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 23

    const-string/jumbo v20, "URLHandler"

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v20

    sput-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-class v20, Landroid/icu/impl/URLHandler;

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v15

    const-string/jumbo v20, "urlhandler.props"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const-class v20, Ljava/net/URL;

    const/16 v21, 0x0

    aput-object v20, v17, v21

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    move-object v9, v8

    :goto_0
    if-eqz v14, :cond_3

    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :cond_0
    move-object v8, v9

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    move-object v9, v8

    goto :goto_0

    :cond_2
    const/16 v20, 0x3d

    :try_start_4
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v20, :cond_3

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "bad urlhandler line: \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    move-object v8, v9

    :cond_4
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_2
    sput-object v8, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    return-void

    :cond_6
    const/16 v20, 0x0

    :try_start_6
    move/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v19

    :try_start_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v20, "get"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    if-nez v9, :cond_9

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    :try_start_8
    move-object/from16 v0, v16

    invoke-interface {v8, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_4
    :try_start_9
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v20, :cond_1

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v18

    move-object v2, v3

    :goto_5
    :try_start_a
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v20, :cond_7

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_7
    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_2

    :catch_3
    move-exception v7

    move-object v8, v9

    :goto_6
    :try_start_c
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v20, :cond_1

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v20

    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_8

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_8
    :goto_8
    throw v20

    :catch_4
    move-exception v6

    move-object v8, v9

    :goto_9
    :try_start_e
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v20, :cond_1

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    :catch_5
    move-exception v10

    goto/16 :goto_2

    :catch_6
    move-exception v10

    goto :goto_8

    :catchall_1
    move-exception v20

    goto :goto_7

    :catchall_2
    move-exception v20

    move-object v2, v3

    move-object v8, v9

    goto :goto_7

    :catch_7
    move-exception v18

    goto :goto_5

    :catch_8
    move-exception v18

    move-object v2, v3

    move-object v8, v9

    goto :goto_5

    :catch_9
    move-exception v5

    move-object v8, v9

    goto :goto_4

    :catch_a
    move-exception v6

    goto :goto_9

    :catch_b
    move-exception v7

    goto :goto_6

    :cond_9
    move-object v8, v9

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .locals 8

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    if-eqz v6, :cond_1

    sget-object v6, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/URLHandler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v3

    :catch_0
    move-exception v2

    sget-boolean v6, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/URLHandler;->getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;

    move-result-object v6

    return-object v6

    :catch_1
    move-exception v1

    sget-boolean v6, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v6, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Landroid/icu/impl/URLHandler$FileURLHandler;

    invoke-direct {v2, p0}, Landroid/icu/impl/URLHandler$FileURLHandler;-><init>(Ljava/net/URL;)V

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v4, "jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "wsjar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    new-instance v2, Landroid/icu/impl/URLHandler$JarURLHandler;

    invoke-direct {v2, p0}, Landroid/icu/impl/URLHandler$JarURLHandler;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public guide(Landroid/icu/impl/URLHandler$URLVisitor;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/URLHandler;->guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V

    return-void
.end method

.method public abstract guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
.end method
