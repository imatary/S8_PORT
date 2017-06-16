.class public Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;
.super Ljava/lang/Object;
.source "SdlInputMethodManager.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/InputMethodManagerInterface;


# instance fields
.field instance:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public isAccessoryKeyboardState()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v4, "isAccessoryKeyboardState"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    return v3

    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    throw v1

    :catch_2
    move-exception v1

    :try_start_3
    throw v1

    :catch_3
    move-exception v1

    throw v1
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public isInputMethodShown()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    const-string v5, "isInputMethodShown"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    return v4

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    :goto_0
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/ResultReceiver;

    aput-object v6, v3, v5

    const-string v5, "showSoftInputUnchecked"

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    return-void

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    throw v0
.end method
