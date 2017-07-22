.class Lcom/android/phone/DsaMain$2;
.super Landroid/content/BroadcastReceiver;
.source "DsaMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaMain;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaMain;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaMain;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaMain$2;->this$0:Lcom/android/phone/DsaMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v1, Lcom/android/phone/DsaMain;->mGetResult:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/DsaMain;->mGetResult:Z

    const-string/jumbo v1, "isActivate"

    iget-object v2, p0, Lcom/android/phone/DsaMain$2;->this$0:Lcom/android/phone/DsaMain;

    invoke-static {v2}, Lcom/android/phone/DsaMain;->-get0(Lcom/android/phone/DsaMain;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/DsaMain$2;->this$0:Lcom/android/phone/DsaMain;

    invoke-virtual {v1, v0}, Lcom/android/phone/DsaMain;->displayResultDialog(Z)V

    :cond_0
    return-void
.end method
