.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;
.super Landroid/os/AsyncTask;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshPhonePreviewIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Landroid/view/View;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/view/View;)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "KeyguardPreviewContainer"

    const-string/jumbo v1, "refreshPhonePreviewIfNeeded - re-creating preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$400(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6$1;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->doInBackground([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$500(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$500(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$502(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$502(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/view/View;)Landroid/view/View;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$6;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
