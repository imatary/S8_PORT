.class Lcom/android/phone/TPhoneManager$3;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "TPhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneManager;->registerScoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneManager;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    invoke-static {v1}, Lcom/android/phone/TPhoneManager;->-get2(Lcom/android/phone/TPhoneManager;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/TPhoneManager;->-set0(Lcom/android/phone/TPhoneManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v0, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    invoke-static {v0}, Lcom/android/phone/TPhoneManager;->-get1(Lcom/android/phone/TPhoneManager;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    invoke-static {v1}, Lcom/android/phone/TPhoneManager;->-get1(Lcom/android/phone/TPhoneManager;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, v0, Lcom/android/phone/TPhoneManager;->mCoverType:I

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "[tphone] TPhoneManager"

    const-string/jumbo v1, "Scover : State Open"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    iput v4, v0, Lcom/android/phone/TPhoneManager;->mCoverState:I

    :goto_0
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    iget v1, v1, Lcom/android/phone/TPhoneManager;->mCoverType:I

    iget-object v2, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    iget v2, v2, Lcom/android/phone/TPhoneManager;->mCoverState:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/TPhoneService;->sendCoverStateChanged(II)V

    return-void

    :cond_1
    const-string/jumbo v0, "[tphone] TPhoneManager"

    const-string/jumbo v1, "Scover : State Close"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager$3;->this$0:Lcom/android/phone/TPhoneManager;

    iput v5, v0, Lcom/android/phone/TPhoneManager;->mCoverState:I

    goto :goto_0
.end method
