.class public Lcom/sec/samsung/gallery/lib/se/SeInputMethodManager;
.super Ljava/lang/Object;
.source "SeInputMethodManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccessoryKeyboardState(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v1

    return v1
.end method

.method public isInputMethodShown(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    return v1
.end method

.method public minimizeSoftInput(Landroid/content/Context;Landroid/os/IBinder;I)Z
    .locals 2

    const-string/jumbo v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->semMinimizeSoftInput(Landroid/os/IBinder;I)Z

    move-result v1

    return v1
.end method
