.class Lcom/android/phone/EmergencyDialer$2;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v2, v3}, Lcom/android/phone/EmergencyDialer;->-set4(Lcom/android/phone/EmergencyDialer;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/EmergencyDialer;->-set3(Lcom/android/phone/EmergencyDialer;Z)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v3, v3, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/EmergencyDialer;->-wrap2(Lcom/android/phone/EmergencyDialer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/EmergencyDialer;->-set3(Lcom/android/phone/EmergencyDialer;Z)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2, v1}, Lcom/android/phone/EmergencyDialer;->-wrap4(Lcom/android/phone/EmergencyDialer;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->-set4(Lcom/android/phone/EmergencyDialer;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
