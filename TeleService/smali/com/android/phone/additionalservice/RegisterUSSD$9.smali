.class Lcom/android/phone/additionalservice/RegisterUSSD$9;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;->alertdialogRegisterUSSD(Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterUSSD;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$9;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$9;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD$9;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get7(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    :goto_0
    invoke-static {v1, v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->-set1(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$AppState;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD$9;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get0(Lcom/android/phone/additionalservice/RegisterUSSD;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$9;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    goto :goto_0
.end method
