.class Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkModeMultiSimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-wrap0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    return-void
.end method
