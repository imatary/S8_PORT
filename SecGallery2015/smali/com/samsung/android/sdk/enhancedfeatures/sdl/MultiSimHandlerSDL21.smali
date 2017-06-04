.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;
.super Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;
.source "MultiSimHandlerSDL21.java"


# instance fields
.field private mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

.field private mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

.field private mGetSlotIdRef:Ljava/lang/reflect/Method;

.field private mInitGetActiveSubIdListRef:Z

.field private mInitGetDefaultSubIdRef:Z

.field private mInitGetSlotIdRef:Z

.field private mInitSetDefaultSubIdRef:Z

.field private mSetDefaultSubIdRef:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetActiveSubIdListRef:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetDefaultSubIdRef:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetSlotIdRef:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitSetDefaultSubIdRef:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mSetDefaultSubIdRef:Ljava/lang/reflect/Method;

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActiveSubIdList()[I
    .locals 10

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    if-nez v6, :cond_1

    move-object v4, v7

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetActiveSubIdListRef:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetActiveSubIdListRef:Z

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const-string/jumbo v8, "getActiveSubIdList"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

    if-nez v6, :cond_3

    move-object v4, v7

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getActiveSubIdList(). NoSuchMethodException. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    move-object v0, v6

    check-cast v0, [J

    move-object v5, v0

    if-nez v5, :cond_4

    move-object v4, v7

    goto :goto_0

    :cond_4
    array-length v6, v5

    new-array v4, v6, [I

    const/4 v3, 0x0

    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_0

    aget-wide v8, v5, v3

    long-to-int v6, v8

    aput v6, v4, v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getActiveSubIdList(). IllegalAccessException. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v4, v7

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getActiveSubIdList(). InvocationTargetException. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getDefaultSubId(I)I
    .locals 7

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetDefaultSubIdRef:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetDefaultSubIdRef:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const-string/jumbo v3, "getDefaultSubId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultSubId(). NoSuchMethodException. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultSubId(). IllegalAccessException. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultSubId(). InvocationTargetException. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getSlotId(I)I
    .locals 8

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetSlotIdRef:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetSlotIdRef:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const-string/jumbo v3, "getSlotId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSlotId(). NoSuchMethodException. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-long v6, p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSlotId(). IllegalAccessException. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSlotId(). InvocationTargetException. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
