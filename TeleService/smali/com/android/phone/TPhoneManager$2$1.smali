.class Lcom/android/phone/TPhoneManager$2$1;
.super Ljava/lang/Object;
.source "TPhoneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneManager$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/TPhoneManager$2;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneManager$2$1;->this$1:Lcom/android/phone/TPhoneManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "TInCallScreen Connected - OFFHOOK"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TPhoneManager;->-wrap0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager$2$1;->this$1:Lcom/android/phone/TPhoneManager$2;

    iget-object v0, v0, Lcom/android/phone/TPhoneManager$2;->this$0:Lcom/android/phone/TPhoneManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/TPhoneManager;->displayTPhone(I)V

    return-void
.end method
