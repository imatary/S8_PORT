.class Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$4;
.super Lcom/android/phone/INetworkQueryServiceCallback$Stub;
.source "NetworkOperatorsLGT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$4;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v1, "notifying message loop of query completion."

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$4;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
