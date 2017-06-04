.class Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$2;
.super Ljava/lang/Object;
.source "QATestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;->runCommand(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;Landroid/content/Context;)V

    return-void
.end method
