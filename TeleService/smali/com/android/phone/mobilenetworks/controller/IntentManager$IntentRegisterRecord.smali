.class Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/controller/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentRegisterRecord"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private callBack:Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;

.field private object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/mobilenetworks/controller/IntentManager;Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->this$0:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->object:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->callBack:Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCallBack()Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->callBack:Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->object:Ljava/lang/Object;

    return-object v0
.end method
