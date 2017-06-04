.class Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$1;
.super Ljava/lang/Object;
.source "QATestActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;->showCommandDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;->command:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;->access$002(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
