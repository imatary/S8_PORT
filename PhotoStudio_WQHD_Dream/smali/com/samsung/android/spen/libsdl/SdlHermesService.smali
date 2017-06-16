.class public Lcom/samsung/android/spen/libsdl/SdlHermesService;
.super Ljava/lang/Object;
.source "SdlHermesService.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/HermesServiceInterface;


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dismissHermes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;

    if-nez v5, :cond_0

    :try_start_0
    const-string v5, "com.samsung.android.hermes.HermesServiceManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;

    const-string v6, "dismissHermes"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7

    return-void

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

    :catch_5
    move-exception v2

    throw v2

    :catch_6
    move-exception v2

    throw v2

    :catch_7
    move-exception v2

    throw v2
.end method

.method public showHermes(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;

    if-nez v7, :cond_0

    const-string v7, "com.samsung.android.hermes.HermesServiceManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-array v4, v8, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v9

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-class v8, Landroid/graphics/Rect;

    aput-object v8, v3, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v7

    iget-object v7, p0, Lcom/samsung/android/spen/libsdl/SdlHermesService;->mClass:Ljava/lang/Class;

    const-string v8, "showHermes"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "HVT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SDL-HermesManager.showHermes url = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7

    return-void

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    throw v1

    :catch_2
    move-exception v1

    throw v1

    :catch_3
    move-exception v1

    throw v1

    :catch_4
    move-exception v1

    throw v1

    :catch_5
    move-exception v1

    throw v1

    :catch_6
    move-exception v1

    throw v1

    :catch_7
    move-exception v1

    throw v1
.end method
