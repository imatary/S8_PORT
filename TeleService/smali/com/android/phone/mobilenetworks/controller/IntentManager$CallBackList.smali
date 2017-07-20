.class Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/controller/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallBackList"
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/mobilenetworks/controller/IntentManager;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mAction:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mCallBacks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCallBack(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mRecords:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;-><init>(Lcom/android/phone/mobilenetworks/controller/IntentManager;Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "IntentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCallBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is added successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hasAction(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyCallBacks(Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v2, "IntentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCallBacks: for action - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callbacks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mCallBacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;

    invoke-interface {v0, p1}, Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;->onReceive(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallBack(Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "IntentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is removed successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
