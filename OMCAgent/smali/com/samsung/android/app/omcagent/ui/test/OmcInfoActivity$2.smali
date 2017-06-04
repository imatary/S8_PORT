.class Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$2;
.super Ljava/lang/Object;
.source "OmcInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->showCommandDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->runCommand(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;Landroid/content/Context;)V

    return-void
.end method
