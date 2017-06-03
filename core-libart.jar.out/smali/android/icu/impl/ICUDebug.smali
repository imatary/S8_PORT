.class public final Landroid/icu/impl/ICUDebug;
.super Ljava/lang/Object;
.source "ICUDebug.java"


# static fields
.field private static debug:Z

.field private static help:Z

.field public static final isJDK14OrHigher:Z

.field public static final javaVersion:Landroid/icu/util/VersionInfo;

.field public static final javaVersionString:Ljava/lang/String;

.field private static params:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v2, "ICUDebug"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    sput-boolean v2, Landroid/icu/impl/ICUDebug;->debug:Z

    sget-boolean v2, Landroid/icu/impl/ICUDebug;->debug:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string/jumbo v5, "help"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    :cond_0
    move v2, v3

    :goto_2
    sput-boolean v2, Landroid/icu/impl/ICUDebug;->help:Z

    sget-boolean v2, Landroid/icu/impl/ICUDebug;->debug:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\nICUDebug="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "java.version"

    const-string/jumbo v5, "0"

    invoke-static {v2, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;

    sget-object v2, Landroid/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/impl/ICUDebug;->getInstanceLenient(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/ICUDebug;->javaVersion:Landroid/icu/util/VersionInfo;

    const-string/jumbo v2, "1.4.0"

    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUDebug;->javaVersion:Landroid/icu/util/VersionInfo;

    invoke-virtual {v2, v1}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v2

    if-ltz v2, :cond_4

    :goto_3
    sput-boolean v3, Landroid/icu/impl/ICUDebug;->isJDK14OrHigher:Z

    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enabled()Z
    .locals 1

    sget-boolean v0, Landroid/icu/impl/ICUDebug;->debug:Z

    return v0
.end method

.method public static enabled(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v1, Landroid/icu/impl/ICUDebug;->debug:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Landroid/icu/impl/ICUDebug;->help:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nICUDebug.enabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstanceLenient(Ljava/lang/String;)Landroid/icu/util/VersionInfo;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v6, 0x4

    new-array v4, v6, [I

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x30

    if-lt v0, v6, :cond_0

    const/16 v6, 0x39

    if-le v0, v6, :cond_4

    :cond_0
    if-eqz v3, :cond_3

    if-ne v5, v9, :cond_2

    move v1, v2

    :cond_1
    :goto_1
    aget v6, v4, v8

    const/4 v7, 0x1

    aget v7, v4, v7

    const/4 v8, 0x2

    aget v8, v4, v8

    aget v9, v4, v9

    invoke-static {v6, v7, v8, v9}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v6

    return-object v6

    :cond_2
    const/4 v3, 0x0

    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    aget v6, v4, v5

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int/2addr v6, v7

    aput v6, v4, v5

    aget v6, v4, v5

    const/16 v7, 0xff

    if-le v6, v7, :cond_3

    aput v8, v4, v5

    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    add-int/lit8 v6, v0, -0x30

    aput v6, v4, v5

    goto :goto_2
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v2, "false"

    sget-boolean v3, Landroid/icu/impl/ICUDebug;->debug:Z

    if-eqz v3, :cond_2

    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_3

    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    if-ne v1, v5, :cond_0

    sget-object v4, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    sget-boolean v3, Landroid/icu/impl/ICUDebug;->help:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\nICUDebug.value("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-object v2

    :cond_3
    const-string/jumbo v2, "true"

    goto :goto_0
.end method
