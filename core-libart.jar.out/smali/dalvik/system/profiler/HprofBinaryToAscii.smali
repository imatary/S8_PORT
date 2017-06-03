.class public final Ldalvik/system/profiler/HprofBinaryToAscii;
.super Ljava/lang/Object;
.source "HprofBinaryToAscii.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static convert([Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    array-length v3, p0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string/jumbo v3, "binary hprof file argument expected"

    invoke-static {v3}, Ldalvik/system/profiler/HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    return v6

    :cond_0
    new-instance v1, Ljava/io/File;

    aget-object v3, p0, v6

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/profiler/HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    return v6

    :cond_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->startsWithMagic(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->readHprof(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->write(Ldalvik/system/profiler/HprofData;)Z

    move-result v3

    return v3

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Problem reading binary hprof data from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v6

    :cond_2
    :try_start_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->readSnapshot(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->write(Ldalvik/system/profiler/HprofData;)Z

    move-result v3

    return v3

    :catch_1
    move-exception v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Problem reading snapshot containing binary hprof data from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v6
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Ldalvik/system/profiler/HprofBinaryToAscii;->convert([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ldalvik/system/profiler/BinaryHprofReader;

    invoke-direct {v0, p0}, Ldalvik/system/profiler/BinaryHprofReader;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldalvik/system/profiler/BinaryHprofReader;->setStrict(Z)V

    invoke-virtual {v0}, Ldalvik/system/profiler/BinaryHprofReader;->read()V

    invoke-virtual {v0}, Ldalvik/system/profiler/BinaryHprofReader;->getHprofData()Ldalvik/system/profiler/HprofData;

    move-result-object v1

    return-object v1
.end method

.method private static readHprof(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method private static readSnapshot(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xa

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/EOFException;

    const-string/jumbo v4, "Could not find expected header"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    goto :goto_0
.end method

.method private static startsWithMagic(Ljava/io/File;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Ldalvik/system/profiler/BinaryHprof;->readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: HprofBinaryToAscii <binary-hprof-file>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Reads a binary hprof file and print it in ASCII format"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static write(Ldalvik/system/profiler/HprofData;)Z
    .locals 4

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v1}, Ldalvik/system/profiler/AsciiHprofWriter;->write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problem writing ASCII hprof data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
