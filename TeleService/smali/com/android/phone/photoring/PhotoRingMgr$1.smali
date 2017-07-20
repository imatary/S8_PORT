.class Lcom/android/phone/photoring/PhotoRingMgr$1;
.super Ljava/lang/Object;
.source "PhotoRingMgr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-static {p2}, Lcom/android/phone/IMCIDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IMCIDService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->-set2(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/IMCIDService;)Lcom/android/phone/IMCIDService;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    const-string/jumbo v1, "mcid service connected"

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingMgr;->-get4(Lcom/android/phone/photoring/PhotoRingMgr;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    const-string/jumbo v1, "resend not sent state"

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingMgr;->-get13(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingMgr;->-get2(Lcom/android/phone/photoring/PhotoRingMgr;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoRingMgr;->-get9(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap1(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->-set0(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->-set2(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/IMCIDService;)Lcom/android/phone/IMCIDService;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr$1;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    const-string/jumbo v1, "mcid service disconnected"

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    return-void
.end method
