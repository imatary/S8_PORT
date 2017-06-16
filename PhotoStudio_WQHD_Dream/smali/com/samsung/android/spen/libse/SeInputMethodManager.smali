.class public Lcom/samsung/android/spen/libse/SeInputMethodManager;
.super Ljava/lang/Object;
.source "SeInputMethodManager.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/InputMethodManagerInterface;


# instance fields
.field instance:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public isAccessoryKeyboardState()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isInputMethodShown()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->semShowSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
