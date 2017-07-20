.class Lcom/android/phone/mobilenetworks/NetworkModeCommonController$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModeCommonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3

    const-string/jumbo v0, "NetworkModeCommonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-wrap0(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;I)V

    return-void
.end method
