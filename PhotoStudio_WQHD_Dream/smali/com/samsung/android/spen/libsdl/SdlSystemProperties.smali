.class public Lcom/samsung/android/spen/libsdl/SdlSystemProperties;
.super Ljava/lang/Object;
.source "SdlSystemProperties.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/SystemPropertiesInterface;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlSystemProperties;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlSystemProperties;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlSystemProperties;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    const-string v4, "android.os.SystemProperties"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/spen/libsdl/SdlSystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v4

    const-string v4, "get"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    :cond_0
    const-string v4, "android.os.SystemProperties"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    throw v2

    :catch_1
    move-exception v2

    throw v2

    :catch_2
    move-exception v2

    throw v2

    :catch_3
    move-exception v2

    throw v2

    :catch_4
    move-exception v2

    throw v2
.end method
