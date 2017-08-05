.class Lcom/android/keyguard/sec/KeyguardSignatureView$2;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before set sign service, mSignView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->getEngineStatus()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$302(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "KeyguardSignatureView"

    const-string/jumbo v1, "fail to init engine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, "KeyguardSignatureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Saved signatures are not sufficient. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/ISignServiceInterface;->readSignatureData(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
