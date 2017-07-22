.class Lcom/android/phone/nwservice/BlockingNuisanceNumber$7;
.super Ljava/lang/Object;
.source "BlockingNuisanceNumber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/BlockingNuisanceNumber;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$7;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$7;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    invoke-static {v0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->-get2(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$7;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    invoke-static {v0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->-get1(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$7;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    invoke-static {v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->-get2(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
