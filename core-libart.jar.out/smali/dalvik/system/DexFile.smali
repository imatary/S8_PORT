.class public final Ldalvik/system/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexFile$DFEnum;
    }
.end annotation


# static fields
.field public static final DEX2OAT_NEEDED:I = 0x1

.field public static final NO_DEXOPT_NEEDED:I = 0x0

.field public static final PATCHOAT_NEEDED:I = 0x2

.field public static final SELF_PATCHOAT_NEEDED:I = 0x3


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mCookie:Ljava/lang/Object;

.field private final mFileName:Ljava/lang/String;

.field private mInternalCookie:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ldalvik/system/DexFile;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldalvik/system/DexFile;->getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2}, Llibcore/io/Os;->getuid()I

    move-result v2

    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    iget v3, v3, Landroid/system/StructStat;->st_uid:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Optimized data directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not owned by the current user. Shared storage cannot protect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " your application from code injection attacks."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    return-void
.end method

.method private static native closeDexFile(Ljava/lang/Object;)Z
.end method

.method private static defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Object;",
            "Ldalvik/system/DexFile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/DexFile;->defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    if-eqz p4, :cond_0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v1

    if-eqz p4, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static native defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation
.end method

.method private static native getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;
.end method

.method public static native getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public static native getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native isBackedByOatFile(Ljava/lang/Object;)Z
.end method

.method public static native isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native isProfileGuidedCompilerFilter(Ljava/lang/String;)Z
.end method

.method public static native isValidCompilerFilter(Ljava/lang/String;)Z
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method static loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ldalvik/system/DexFile;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    return-object v0
.end method

.method private static openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    :goto_0
    invoke-static {v1, v0, p2, p3, p4}, Ldalvik/system/DexFile;->openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static native openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iput-object v1, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    invoke-direct {v0, p0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Failed to close dex file in finalizer."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method isBackedByOatFile()Z
    .locals 1

    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->isBackedByOatFile(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {p1, p2, v0, p0, p3}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
