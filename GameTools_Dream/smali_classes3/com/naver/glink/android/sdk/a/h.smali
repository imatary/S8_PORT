.class public Lcom/naver/glink/android/sdk/a/h;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Landroid/widget/EditText;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/EditText;

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/h;->a(Landroid/view/ViewGroup;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/a/h;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method
