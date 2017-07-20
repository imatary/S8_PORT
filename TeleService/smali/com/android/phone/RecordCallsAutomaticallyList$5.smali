.class Lcom/android/phone/RecordCallsAutomaticallyList$5;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RecordCallsAutomaticallyList;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyList;


# direct methods
.method constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$5;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$5;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get1(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$5;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get2(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$5;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get1(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
