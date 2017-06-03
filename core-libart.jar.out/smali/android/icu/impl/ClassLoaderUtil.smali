.class public Landroid/icu/impl/ClassLoaderUtil;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
    }
.end annotation


# static fields
.field private static volatile BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBootstrapClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v1, :cond_1

    const-class v2, Landroid/icu/impl/ClassLoaderUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/icu/impl/ClassLoaderUtil$1;

    invoke-direct {v1}, Landroid/icu/impl/ClassLoaderUtil$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :goto_0
    sput-object v0, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    :cond_1
    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    return-object v1

    :cond_2
    :try_start_1
    new-instance v0, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    invoke-direct {v0}, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getBootstrapClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    return-object v0
.end method
