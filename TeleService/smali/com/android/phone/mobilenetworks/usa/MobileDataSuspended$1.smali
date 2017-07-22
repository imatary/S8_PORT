.class Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$1;
.super Landroid/telephony/PhoneStateListener;
.source "MobileDataSuspended.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$1;->this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "PR.MobileDataSuspended"

    const-string/jumbo v1, "onCallStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v0, "PR.MobileDataSuspended"

    const-string/jumbo v1, "do finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$1;->this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->-set0(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;Z)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$1;->this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->finish()V

    :cond_0
    return-void
.end method
